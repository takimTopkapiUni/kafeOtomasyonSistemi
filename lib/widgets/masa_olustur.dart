import 'package:flutter/material.dart';
import '../pages/rezerve_pages/RezervePage1.dart';

//*Masaları oluşturduğumuz Widget
class MasaOlustur extends StatelessWidget {
  const MasaOlustur({Key? key, required this.masaNo, required this.doluMu})
      : super(key: key);

  @override
  final masaNo, doluMu;

  @override
  Widget build(BuildContext context) {
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RezervePage()));
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
