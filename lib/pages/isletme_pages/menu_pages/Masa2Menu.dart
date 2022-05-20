import 'package:flutter/material.dart';

void main() {
  runApp(Masa2Menu());
}

class Masa2Menu extends StatelessWidget {
  const Masa2Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Masa 2 Menü",
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
        title: Text("Masa 2 Menü"),
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
