import 'package:flutter/material.dart';

class Masa3_Menu extends StatefulWidget {
  const Masa3_Menu({Key? key}) : super(key: key);

  @override
  State<Masa3_Menu> createState() => _Masa3_MenuState();
}

class _Masa3_MenuState extends State<Masa3_Menu> {
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
            child: Text("Masa 3 Menü"),
          ),
        ],
      ),
    );
  }
}
