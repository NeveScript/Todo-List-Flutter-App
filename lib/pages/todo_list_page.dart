import 'package:flutter/material.dart';
import '../widgets/todo_list_item.dart';
import '../models/todo.dart';

class TodoListPage extends StatefulWidget {
  TodoListPage({super.key});

  @override
  State<TodoListPage> createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  List<Todo> todos = [];

  final TextEditingController todoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: todoController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Add a Task",
                          hintText: "Example: Buy some winter clothes",
                        ),
                      ),
                    ),
                    const SizedBox(width: 8.0,),
                    ElevatedButton(
                      onPressed: () {
                        Todo todo = Todo(name: todoController.text, dateTime: DateTime.now());

                        setState(() {
                          todos.add(todo);
                        });

                        todoController.clear();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.cyan,
                        padding: const EdgeInsets.all(14.0),
                      ),
                      child: const Icon(
                        Icons.add,
                        size: 30,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16.0,
                ),
                Flexible(
                  child: ListView(
                    shrinkWrap: true,
                    children: [

                      for(Todo todo in todos)
                        TodoListItem(todo: todo),

                    ],
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "You have ${todos.length} pending tasks",
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.cyan,
                        padding: const EdgeInsets.all(14.0),
                      ),
                      child: const Text("Clean all"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
