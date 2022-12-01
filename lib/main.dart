import 'package:bookstore/screens/columns.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to our Bookstore',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to our Bookstore'),
        ),
        body: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Columns(),
               ));
          },
          child: Center(child: Text('Hello Me')),
        ),
      ),
    );
  }
}
