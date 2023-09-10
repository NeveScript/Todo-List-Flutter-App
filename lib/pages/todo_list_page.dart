import 'package:flutter/material.dart';

class TodoListPage extends StatelessWidget {
  const TodoListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextField(
            decoration: InputDecoration(
              labelText: "Enter the task",
              hintText: "Try typing: Feed the dog...",
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ),
    );
  }
}