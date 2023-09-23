import 'package:advenced_todo/screen/show_list_screen/components/foldable_todos.dart';
import 'package:flutter/material.dart';

import 'components/todo.dart';

class ShowListScreen extends StatefulWidget {
  const ShowListScreen({super.key});

  @override
  State<ShowListScreen> createState() => _ShowListScreenState();
}

class _ShowListScreenState extends State<ShowListScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Todo(
            text: 'DON\'T FORGET THIS THINGS.',
            isChecked: false,
          ),
          Todo(
            text: 'DON\'T TRY THIS AT HOME.',
            isChecked: false,
          ),
          FoldableTodos(
            text: 'TRY THIS AT HOME',
          ),
        ],
      ),
    );
  }
}
