// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:basicflutter/login/home.dart';
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
      home: HomeScreen(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}
