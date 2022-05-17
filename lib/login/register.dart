import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "สร้างบัญชีผู้ใช้",
        ),
        leading: const Icon(Icons.android),
        titleSpacing: 0,
      ),
      body: Column(children: [Container()]),
    );
  }
}
