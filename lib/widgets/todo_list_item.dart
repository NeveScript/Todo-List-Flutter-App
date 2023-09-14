import "package:flutter/material.dart";

class TodoListItem extends StatelessWidget {
  const TodoListItem({super.key, required this.taskName});

  final String taskName;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: const Color(0xfff3f3f3ff),
      ),
      margin: const EdgeInsets.all(2.0),
      padding: const EdgeInsets.all(8.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          DateTime.now().toString(),
          style: const TextStyle(
            fontSize: 12,
          ),
        ),
        Text(
          taskName,
          style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ]),
    );
  }
}
