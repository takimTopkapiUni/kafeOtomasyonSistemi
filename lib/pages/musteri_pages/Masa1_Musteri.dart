import 'package:flutter/material.dart';
import 'package:kafe_uygulamasi/pages/musteri_pages/masalar/Masa1/Masa1_Menu.dart';

import 'masalar/Masa1/Masa1_Sepet.dart';

class Masa1_Musteri extends StatefulWidget {
  const Masa1_Musteri({Key? key}) : super(key: key);

  @override
  State<Masa1_Musteri> createState() => _Masa1_MusteriState();
}
// Müşteri MASA 1

class _Masa1_MusteriState extends State<Masa1_Musteri> {
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
          children: [Masa1_Menu(), Masa1_Sepet()],
        ),
      ),
    );
  }
}
