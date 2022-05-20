import 'package:flutter/material.dart';

void main() {
  runApp(Masa1Menu());
}

class Masa1Menu extends StatelessWidget {
  const Masa1Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Masa 1 Menü",
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
        title: Text("Masa 1 Menü"),
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
