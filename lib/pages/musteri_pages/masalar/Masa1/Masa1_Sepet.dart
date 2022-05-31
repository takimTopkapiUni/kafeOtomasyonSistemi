import 'package:flutter/material.dart';

class Masa1_Sepet extends StatefulWidget {
  const Masa1_Sepet({Key? key}) : super(key: key);

  @override
  State<Masa1_Sepet> createState() => _Masa1_SepetState();
}

class _Masa1_SepetState extends State<Masa1_Sepet> {
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
            child: Text("Masa 1 Sepet"),
          ),
        ],
      ),
    );
  }
}
