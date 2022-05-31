import 'package:flutter/material.dart';

class Masa3_Sepet extends StatefulWidget {
  const Masa3_Sepet({Key? key}) : super(key: key);

  @override
  State<Masa3_Sepet> createState() => _Masa3_SepetState();
}

class _Masa3_SepetState extends State<Masa3_Sepet> {
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
            child: Text("Masa 3 Sepet"),
          ),
        ],
      ),
    );
  }
}
