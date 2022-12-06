import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RowsScreen extends StatefulWidget {
  const RowsScreen({super.key});

  @override
  State<RowsScreen> createState() => _RowsScreenState();
}

class _RowsScreenState extends State<RowsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rows'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Excellent"),
          Text("Good"),
          Text("Better"),
          Text("Best"),
          Text("Worst"),
        ],
       
      ),
    );
  }
}