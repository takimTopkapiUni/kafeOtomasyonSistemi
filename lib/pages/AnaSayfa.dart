import 'package:flutter/material.dart';
import 'package:kafe_uygulamasi/pages/IsletmePage.dart';
import 'package:kafe_uygulamasi/pages/MasaPage.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({ Key? key }) : super(key: key);

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kafe Otomasyon',
      home: DefaultTabController(
        length: 2, // 2 Sekmeden oluşacak
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(
                  text: "MÜŞTERİ",
                ),
                Tab(
                  text: "İŞLETME",
                ),
              ],
            ),
            centerTitle: true,
            title: const Text('Kafe Otomasyon Sistemi'),
          ),
          body: const TabBarView(
            children: [MasaPage(), IsletmePage()],
          ),
        ),
      ),
    );
  }
}