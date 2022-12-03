import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class columns extends StatefulWidget {
  const columns({super.key});

  @override
  State<columns> createState() => _columnsState();
}

class _columnsState extends State<columns> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Columns'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("School"),
          Text("Bus"),
          Text("Move"),
          Text("Child"),
          Text("go"),
          Text("come"),
          Text("food"),
          Text("drinks"),
        ],
      ),
    );
  }
}
