import 'package:flutter/material.dart';

import 'masalar/Masa2/Masa2_Menu.dart';
import 'masalar/Masa2/Masa2_Sepet.dart';

class Masa2_Musteri extends StatefulWidget {
  const Masa2_Musteri({Key? key}) : super(key: key);

  @override
  State<Masa2_Musteri> createState() => _Masa2_MusteriState();
}

// Müşteri MASA 2
class _Masa2_MusteriState extends State<Masa2_Musteri> {
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
          children: [Masa2_Menu(), Masa2_Sepet()],
        ),
      ),
    );
  }
}
