// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';
import 'formscreen.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: TabBarView(children: [FormScreen(), Container()]),
        backgroundColor: Colors.blue,
        bottomNavigationBar: TabBar(tabs: [
          Tab(
            text: "บันทึกคะแนน",
          ),
          Tab(
            text: "รายชื่อนักเรียน",
          )
        ]),
      ),
    );
  }
}
