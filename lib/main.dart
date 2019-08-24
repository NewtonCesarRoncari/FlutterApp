import 'package:flutter/material.dart';

import 'models/item.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First Window',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.deepPurple,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  var items = new List<Item>();

  HomePage() {
    items = [];
    items.add(Item("title 1", false));
    items.add(Item("title 2", true));
    items.add(Item("title 3", true));
  }

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var newTaskController = TextEditingController();

  void add() {
    setState(() {
      widget.items.add(Item(newTaskController.text, false));
      newTaskController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: TextFormField(
          controller: newTaskController,
          style: TextStyle(color: Colors.white, fontSize: 18),
          decoration: InputDecoration(
              labelText: "New Task",
              labelStyle: TextStyle(color: Colors.white)),
        ),
      ),
      body: ListView.builder(
        itemCount: widget.items.length,
        itemBuilder: (BuildContext contex, int index) {
          final item = widget.items[index];
          return Dismissible(
              key: Key(item.title),
              background: Container(
                color: Colors.red.withOpacity(0.3),
              ),
              child: CheckboxListTile(
                title: Text(
                  item.title,
                  style: TextStyle(fontSize: 22),
                ),
                value: item.done,
                onChanged: (value) {
                  setState(() {
                    item.done = value;
                  });
                },
              ));
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: add,
        child: Icon(Icons.add),
        backgroundColor: Colors.pink,
      ),
    );
  }
}
