import 'package:flutter/material.dart';
import 'package:provider/Widgets/tilewidget.dart';
import 'package:provider/model/task.dart';

class Tasklist extends StatefulWidget {
  const Tasklist({super.key});

  @override
  State<Tasklist> createState() => _TasklistState();
}

class _TasklistState extends State<Tasklist> {
  List task = [
    Task(
      name: 'Buy Milk',
    ),
    Task(
      name: 'Buy Milk',
    ),
    Task(
      name: 'Buy Milk',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Tasklist(),
      ],
    );
  }
}
