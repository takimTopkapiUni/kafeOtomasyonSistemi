import 'package:flutter/material.dart';
import 'package:kafe_uygulamasi/pages/RezervePage.dart';

import '../widgets/masa_olustur.dart';

class MasaPage extends StatefulWidget {
  const MasaPage({Key? key}) : super(key: key);

  @override
  State<MasaPage> createState() => _MasaPageState();
}

class _MasaPageState extends State<MasaPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      //*Masaların Göründüğü Kısım
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //* MASALAR

              Expanded(
                child: GridView.count(
                  crossAxisCount: 2, // Her sütünda 2 eleman olacak
                  scrollDirection: Axis.vertical, // Dikey kaydırma yapıyor
                  shrinkWrap: true,
                  primary: false,
                  padding: const EdgeInsets.all(5),
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 30,
                  children: const <Widget>[
                    MasaOlustur(masaNo: 1, doluMu: "Dolu"),
                    MasaOlustur(masaNo: 2, doluMu: "Boş"),
                    MasaOlustur(masaNo: 3, doluMu: "Dolu"),
                    MasaOlustur(masaNo: 4, doluMu: "Dolu"),
                    MasaOlustur(masaNo: 5, doluMu: "Boş"),
                    MasaOlustur(masaNo: 6, doluMu: "Dolu"),
                    MasaOlustur(masaNo: 7, doluMu: "Boş"),
                    MasaOlustur(masaNo: 8, doluMu: "Dolu"),
                    MasaOlustur(masaNo: 9, doluMu: "Dolu"),
                    MasaOlustur(masaNo: 10, doluMu: "Dolu"),
                    MasaOlustur(masaNo: 11, doluMu: "Dolu"),
                    MasaOlustur(masaNo: 12, doluMu: "Dolu"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
