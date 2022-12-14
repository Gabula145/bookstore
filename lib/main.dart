import 'package:flutter/material.dart';
import 'package:bookstore/screens/ColumnsScreen.dart';
import 'package:bookstore/screens/ContainerScreen.dart';
import 'package:bookstore/screens/ContainerStylingScreen.dart';
import 'package:bookstore/screens/ImagesScreen.dart';
import 'package:bookstore/screens/RowsScreen.dart';
import 'package:bookstore/screens/TextStylingScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        //primarySwatch: Color.blue,
      ),
      home: const MyHomePage(title: 'Flutter Shop'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home screen"),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("Coulumns"),
            leading: Icon(Icons.view_column_outlined),
            trailing: Icon(Icons.chevron_right),
            subtitle: Text("All about columns..."),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ColumnScreen(),
                ),
              );
            },
          ),
          ListTile(
            title: Text("Rows"),
            leading: Icon(Icons.table_rows_outlined),
            trailing: Icon(Icons.chevron_right),
            subtitle: Text("All about rows..."),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RowsScreen(),
                ),
              );
            },
          ),
          ListTile(
            title: Text("Container"),
            leading: Icon(Icons.check_box_outline_blank),
            trailing: Icon(Icons.chevron_right),
            subtitle: Text("All about container..."),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ContainerScreen(),
                ),
              );
            },
          ),
          ListTile(
            title: Text("Images"),
            leading: Icon(Icons.photo_size_select_actual_outlined),
            trailing: Icon(Icons.chevron_right),
            subtitle: Text("All about images..."),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ImagesScreen(),
                ),
              );
            },
          ),
          ListTile(
            title: Text("Text styling"),
            leading: Icon(Icons.text_fields_outlined),
            trailing: Icon(Icons.chevron_right),
            subtitle: Text("Decorating text..."),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TextStylingScreen(),
                ),
              );
            },
          ),
          ListTile(
            title: Text("Container styling"),
            leading: Icon(Icons.deblur_rounded),
            trailing: Icon(Icons.chevron_right),
            subtitle: Text("Decorating containers..."),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ContainerStylingScreen(),
                ),
              );
            },
          ),

          /*InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ColumnScreen(),
                ),
              );
            },
            child: Text("Columns"),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ColumnScreen(),
                ),
              );
            },
            child: Text("Columns"),
          ),*/
        ],
      ),
    );
  }
}
