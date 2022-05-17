import 'package:flutter/material.dart';

import 'food_menu/main.dart';
import 'form/main.dart';
import 'login/home.dart';
import 'money_box/main.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Register/Login")),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 50, 10, 0),
        child: Column(
          children: [
            Image.asset(
              "assets/images/logo.png",
              width: 50,
              height: 50,
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const HomeIncomePage();
                    }));
                  },
                  icon: const Icon(Icons.add_box),
                  label: const Text(
                    "บัญชีของฉัน",
                    style: TextStyle(fontSize: 20),
                  )),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const HomeLoginPage();
                    }));
                  },
                  icon: const Icon(Icons.login),
                  label: const Text(
                    "ระบบ login",
                    style: TextStyle(fontSize: 20),
                  )),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const FoodMenuPage();
                    }));
                  },
                  icon: const Icon(Icons.food_bank),
                  label: const Text(
                    "เมนูอาหาร",
                    style: TextStyle(fontSize: 20),
                  )),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const FormPage();
                    }));
                  },
                  icon: const Icon(Icons.folder),
                  label: const Text(
                    "ฟอร์ม",
                    style: TextStyle(fontSize: 20),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
