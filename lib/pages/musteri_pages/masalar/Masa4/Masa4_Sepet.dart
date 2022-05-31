import 'package:flutter/material.dart';

class Masa4_Sepet extends StatefulWidget {
  const Masa4_Sepet({Key? key}) : super(key: key);

  @override
  State<Masa4_Sepet> createState() => _Masa4_SepetState();
}

class _Masa4_SepetState extends State<Masa4_Sepet> {
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
            child: Text("Masa 4 Sepet"),
          ),
        ],
      ),
    );
  }
}
