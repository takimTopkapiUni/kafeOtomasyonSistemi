import 'package:flutter/material.dart';

class Masa2_Sepet extends StatefulWidget {
  const Masa2_Sepet({Key? key}) : super(key: key);

  @override
  State<Masa2_Sepet> createState() => _Masa2_SepetState();
}

class _Masa2_SepetState extends State<Masa2_Sepet> {
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
            child: Text("Masa 2 Sepet"),
          ),
        ],
      ),
    );
  }
}
