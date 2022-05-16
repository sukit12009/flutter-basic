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
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello NoView"),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "data",
              style: TextStyle(fontSize: 30, color: Colors.red),
            ),
            Text("data2"),
            Image(
              image: NetworkImage(
                  "https://cdn.pixabay.com/photo/2022/04/23/20/15/black-redstart-7152438__340.jpg"),
            )
          ]),
        ),
      ),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}
