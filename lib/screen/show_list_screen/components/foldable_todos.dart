import 'package:flutter/material.dart';

class FoldableTodos extends StatefulWidget {
  const FoldableTodos({
    super.key,
    required this.text,
  });

  final String text;

  @override
  State<FoldableTodos> createState() => _FoldableTodosState();
}

class _FoldableTodosState extends State<FoldableTodos> {
  bool isFolded = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              isFolded = !isFolded;
            });
          },
          child: Row(
            children: [
              isFolded
                  ? const Icon(Icons.arrow_right)
                  : const Icon(Icons.arrow_drop_down),
              Text(
                widget.text,
                style: const TextStyle(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
