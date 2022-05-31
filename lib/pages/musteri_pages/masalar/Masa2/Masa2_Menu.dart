import 'package:flutter/material.dart';

class Masa2_Menu extends StatefulWidget {
  const Masa2_Menu({Key? key}) : super(key: key);

  @override
  State<Masa2_Menu> createState() => _Masa2_MenuState();
}

class _Masa2_MenuState extends State<Masa2_Menu> {
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
            child: Text("Masa 2 Menü"),
          ),
        ],
      ),
    );
  }
}
