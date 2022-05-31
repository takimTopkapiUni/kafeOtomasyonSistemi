import 'package:flutter/material.dart';
import 'masalar/Masa3/Masa3_Menu.dart';
import 'masalar/Masa3/Masa3_Sepet.dart';

class Masa3_Musteri extends StatefulWidget {
  const Masa3_Musteri({Key? key}) : super(key: key);

  @override
  State<Masa3_Musteri> createState() => _Masa3_MusteriState();
}

// Müşteri MASA 3
class _Masa3_MusteriState extends State<Masa3_Musteri> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // 2 Sekmeden oluşacak
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(
                text: "MENÜ",
              ),
              Tab(
                text: "SEPETİM",
              ),
            ],
          ),
          centerTitle: true,
          title: const Text('Kafe Otomasyon Sistemi'),
        ),
        body: const TabBarView(
          children: [Masa3_Menu(), Masa3_Sepet()],
        ),
      ),
    );
  }
}
