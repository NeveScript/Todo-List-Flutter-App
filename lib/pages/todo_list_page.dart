import 'package:flutter/material.dart';

class TodoListPage extends StatefulWidget {
  TodoListPage({super.key});

  @override
  State<TodoListPage> createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  List<String> tasks = [];

  final TextEditingController taskController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: taskController,
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
                      String task = taskController.text;

                      setState(() {
                        tasks.add(task);
                      });

                      taskController.clear();
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

                    for(String task in tasks)
                      ListTile(
                        title: Text(task),
                        subtitle: Text(DateTime.now().toString()),
                        leading: const Icon(Icons.book, size: 30),
                      ),

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
                      "You have ${tasks.length} pending tasks",
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
    );
  }
}
