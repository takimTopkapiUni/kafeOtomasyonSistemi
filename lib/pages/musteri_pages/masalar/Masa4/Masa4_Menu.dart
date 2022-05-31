import 'package:flutter/material.dart';

class Masa4_Menu extends StatefulWidget {
  const Masa4_Menu({Key? key}) : super(key: key);

  @override
  State<Masa4_Menu> createState() => _Masa4_MenuState();
}

class _Masa4_MenuState extends State<Masa4_Menu> {
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
            child: Text("Masa 4 Menü"),
          ),
        ],
      ),
    );
  }
}
