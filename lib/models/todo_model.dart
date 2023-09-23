class TodoModel {
  final bool isChecked;
  final String text;

  TodoModel({
    required this.isChecked,
    required this.text,
  });

  factory TodoModel.fromJson(Map<String, dynamic> json) {
    return TodoModel(
      isChecked: json['isChecked'] as bool,
      text: json['text'] as String,
    );
  }
}

class FoldableTodoModel {
  final String text;
  final List<TodoModel> _todos = <TodoModel>[];

  FoldableTodoModel({
    required this.text,
  });

  void add(TodoModel todo) {
    _todos.add(todo);
  }

  void delete(TodoModel todo) {
    _todos.remove(todo);
  }
}
