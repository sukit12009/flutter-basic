// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: MyHomePage(),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int number = 0;
  int n = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello NoView"),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "กดปุ่มเพื่อเพิ่มตัวเลข",
            style: TextStyle(fontSize: 30, color: Colors.red),
          ),
          Text(
            "$number",
            style: TextStyle(color: Colors.blue),
          ),
          Text(
            "$n",
            style: TextStyle(color: Colors.blue),
          ),
          Image(
            image: NetworkImage(
                "https://cdn.pixabay.com/photo/2022/04/23/20/15/black-redstart-7152438__340.jpg"),
          )
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: add,
        child: Icon(Icons.add),
      ),
    );
  }

  void add() {
    setState(() {
      number++;
      n--;
    });
  }
}
