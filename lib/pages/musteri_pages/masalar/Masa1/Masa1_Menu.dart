import 'package:flutter/material.dart';

class Masa1_Menu extends StatefulWidget {
  const Masa1_Menu({Key? key}) : super(key: key);

  @override
  State<Masa1_Menu> createState() => _Masa1_MenuState();
}

class _Masa1_MenuState extends State<Masa1_Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.green,
            child: Text("Masa 1 Menü"),
          ),
        ],
      ),
    );
  }
}
