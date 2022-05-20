import 'package:flutter/material.dart';
import 'package:kafe_uygulamasi/widgets/isletme_widgets/isletme_masa1.dart';
import 'package:kafe_uygulamasi/widgets/isletme_widgets/isletme_masa2.dart';
import 'package:kafe_uygulamasi/widgets/isletme_widgets/isletme_masa3.dart';
import 'package:kafe_uygulamasi/widgets/isletme_widgets/isletme_masa4.dart';

class IsletmeMasa extends StatefulWidget {
  const IsletmeMasa({Key? key}) : super(key: key);

  @override
  State<IsletmeMasa> createState() => _IsletmeMasa();
}

class _IsletmeMasa extends State<IsletmeMasa> {
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
                    IsletmeMasa1(masaNo: 1, doluMu: "Dolu"),
                    IsletmeMasa2(masaNo: 2, doluMu: "Boş"),
                    IsletmeMasa3(masaNo: 3, doluMu: "Dolu"),
                    IsletmeMasa4(masaNo: 4, doluMu: "Dolu"),
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
