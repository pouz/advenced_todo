import 'package:flutter/material.dart';

class Todo extends StatefulWidget {
  const Todo({
    super.key,
    required this.isChecked,
    required this.text,
  });

  final bool isChecked;
  final String text;

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  late bool boxChecked;

  @override
  void initState() {
    boxChecked = widget.isChecked;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: boxChecked,
          onChanged: (isChecked) {
            setState(() {
              boxChecked = isChecked!;
            });
          },
        ),
        Text(
          widget.text,
          style: const TextStyle(),
        ),
      ],
    );
  }
}
