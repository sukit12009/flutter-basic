// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';
import 'MoneyBox.dart';

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
      theme: ThemeData(primarySwatch: Colors.lightBlue),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "บัญชีของฉัน",
            style: TextStyle(
                fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              MoneyBox("ยอดคงเหลือ", 10000000.94444, Colors.lightBlue, 120),
              SizedBox(
                height: 5,
              ),
              MoneyBox("รายรับ", 15000, Colors.green, 100),
              SizedBox(
                height: 5,
              ),
              MoneyBox("รายจ่าย", 10000, Colors.red, 100),
              SizedBox(
                height: 5,
              ),
              MoneyBox("ค้างชำระ", 1000, Colors.orange, 100)
            ],
          ),
        ));
  }
}
