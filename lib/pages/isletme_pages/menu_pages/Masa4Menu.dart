import 'package:flutter/material.dart';

void main() {
  runApp(Masa4Menu());
}

class Masa4Menu extends StatelessWidget {
  const Masa4Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Masa 4 Menü",
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
        title: Text("Masa 4 Menü"),
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
