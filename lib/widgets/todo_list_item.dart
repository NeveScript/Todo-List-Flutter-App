import "package:flutter/material.dart";
import "package:intl/intl.dart";
import 'package:flutter_slidable/flutter_slidable.dart';
import "../models/todo.dart";

class TodoListItem extends StatelessWidget {
  const TodoListItem({super.key, required this.todo});

  final Todo todo;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      actionPane: const SlidableDrawerActionPane(),
      secondaryActions: [
        IconSlideAction(
          color: Colors.red,
          icon: Icons.delete,
          onTap: (){},
        ),
      ],
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: const Color(0xfff3f3f3ff),
        ),
        margin: const EdgeInsets.all(2.0),
        padding: const EdgeInsets.all(8.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Text(
            DateFormat(
              "yyyy/MM/dd",
            ).format(todo.dateTime),
            style: const TextStyle(
              fontSize: 12,
            ),
          ),
          Text(
            todo.name,
            style: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ]),
      ),
    );
  }
}
