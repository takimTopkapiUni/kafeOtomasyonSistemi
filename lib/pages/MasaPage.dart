import 'package:flutter/material.dart';
import 'package:kafe_uygulamasi/pages/RezervePage.dart';

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
                  children: <Widget>[
                    MasaOlustur(1, "Dolu"),
                    MasaOlustur(2, "Boş"),
                    MasaOlustur(3, "Dolu"),
                    MasaOlustur(4, "Boş"),
                    MasaOlustur(5, "Dolu"),
                    MasaOlustur(6, "Dolu"),
                    MasaOlustur(7, "Dolu"),
                    MasaOlustur(8, "Dolu"),
                    MasaOlustur(9, "Dolu"),
                    MasaOlustur(10, "Dolu"),
                    MasaOlustur(11, "Dolu"),
                    MasaOlustur(12, "Dolu"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  //*Masaları oluşturduğumuz method
  MasaOlustur(int masaNo, String doluMu) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(top: 25),
        alignment: Alignment.centerRight,
        color: Colors.green,
        width: 125,
        height: 125,
        child: Column(
          children: [
            Container(
              alignment: Alignment.topCenter,
              child: Text(
                "Masa $masaNo : $doluMu",
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              color: Colors.black,
              height: 3,
              width: 175,
            ),
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.green.shade200),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RezervePage()));
                  print("Masa $masaNo Rezerve Edildi");
                },
                child: const Text(
                  "Rezerve Et",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
