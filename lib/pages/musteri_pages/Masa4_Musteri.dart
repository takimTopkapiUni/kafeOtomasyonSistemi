import 'package:flutter/material.dart';

import 'masalar/Masa4/Masa4_Menu.dart';
import 'masalar/Masa4/Masa4_Sepet.dart';

class Masa4_Musteri extends StatefulWidget {
  const Masa4_Musteri({Key? key}) : super(key: key);

  @override
  State<Masa4_Musteri> createState() => _Masa4_MusteriState();
}

// Müşteri MASA 4
class _Masa4_MusteriState extends State<Masa4_Musteri> {
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
          children: [Masa4_Menu(), Masa4_Sepet()],
        ),
      ),
    );
  }
}
