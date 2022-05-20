import 'package:flutter/material.dart';

void main() {
  runApp(Masa3Menu());
}

class Masa3Menu extends StatelessWidget {
  const Masa3Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Masa 3 Menü",
      home: AnaEkran(),
    );
  }
}

class AnaEkran extends StatelessWidget {
  const AnaEkran({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Masa 3 Menü"),
      ),
      body: Container(
        margin: EdgeInsets.all(50),
        child: Center(
          child: Text(''),
        ),
      ),
    );
  }
}
