import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const id = 'home_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
            child: Text(
          "Home Screen",
          style: TextStyle(color: Colors.white, fontSize: 40),
        )),
      ),
    );
  }
}
