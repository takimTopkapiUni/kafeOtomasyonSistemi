import 'package:flutter/material.dart';

class RezervePage extends StatefulWidget {
  const RezervePage({Key? key}) : super(key: key);

  @override
  State<RezervePage> createState() => _RezervePageState();
}

class _RezervePageState extends State<RezervePage> {
  @override
  String musteriKullaniciAdi = "musteri";
  String musteriKullaniciSifresi = "m1234";
  late String alinanKullanici, alinanSifre;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(60.0),
            child: Container(
              child: CircleAvatar(
                maxRadius: 50,
                backgroundColor: Colors.blue.shade300,
                child: const Icon(
                  Icons.people,
                  color: Colors.blue,
                  size: 55,
                ),
              ),
            ),
          ),
          Form(
            child: Column(
              children: [
                TextFormField(
                  onChanged: (kullaniciIsmi) {
                    setState(() {
                      alinanKullanici = kullaniciIsmi;
                    });
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: "Kullanıcı Adı",
                    labelStyle: const TextStyle(color: Colors.black),
                    hintText: "Kullanıcı Adını Giriniz",
                    hintStyle: const TextStyle(color: Colors.black),
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  onChanged: (kullaniciSifre) {
                    setState(() {
                      alinanSifre = kullaniciSifre;
                    });
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: "Şifre",
                    labelStyle: const TextStyle(color: Colors.black),
                    hintText: "Şifrenizi Giriniz",
                    hintStyle: const TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 25),

          //* Giriş Yap Butonu
          ElevatedButton(
            child: const Text("GİRİŞ YAP"),
            onPressed: () {
              if (alinanKullanici == musteriKullaniciAdi &&
                  alinanSifre == musteriKullaniciSifresi) {
                print("tebrikler");
              } else {
                print("hatali");
              }
            },
          )
        ],
      ),
    );
  }
}
