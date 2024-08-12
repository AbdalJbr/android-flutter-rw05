import 'package:flutter/material.dart';

class Menu2 extends StatelessWidget {
  const Menu2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.teal[800],
        title: Text(
          "Formulir Dukcapil",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white70,
          ),
        ),
      ),
    );
  }
}
