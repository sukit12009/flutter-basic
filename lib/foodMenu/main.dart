// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';
import 'foodMenu.dart';

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
  List<FoodMenu> menu = [
    FoodMenu("กุ้งเผา", "50", "assets/images/img1.jpg"),
    FoodMenu("กระเพราะหมู", "80", "assets/images/img2.jpg"),
    FoodMenu("ส้มตำ", "60", "assets/images/img3.jpg"),
    FoodMenu("ข้าวผัด", "30", "assets/images/img4.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("เลือกเมนูอาหาร"),
        ),
        body: Center(
            child: ListView.builder(
                itemCount: menu.length,
                itemBuilder: (BuildContext context, int index) {
                  FoodMenu food = menu[index];
                  return ListTile(
                    leading: Image.asset(food.img),
                    title: Text(food.name),
                    subtitle: Text(food.price),
                    onTap: () {
                      print("food.name: " + food.name);
                    },
                  );
                })));
  }
}
