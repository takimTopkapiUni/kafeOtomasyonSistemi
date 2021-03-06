import 'package:flutter/material.dart';

import 'Isletme_AnaSayfa.dart';

class IsletmePage extends StatefulWidget {
  const IsletmePage({Key? key}) : super(key: key);

  @override
  State<IsletmePage> createState() => _IsletmePageState();
}

class _IsletmePageState extends State<IsletmePage> {
  @override
  String adminKullaniciAdi = "a";
  String adminKullaniciSifresi = "a";
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
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: "Kullanıcı Adı",
                    labelStyle: const TextStyle(color: Colors.black),
                    hintText: "Kullanıcı Adını Giriniz",
                    hintStyle: const TextStyle(color: Colors.black),
                  ),
                  onChanged: (kullaniciIsmi) {
                    setState(() {
                      alinanKullanici = kullaniciIsmi;
                    });
                  },
                ),
                const SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: "Şifre",
                    labelStyle: const TextStyle(color: Colors.black),
                    hintText: "Şifrenizi Giriniz",
                    hintStyle: const TextStyle(color: Colors.black),
                  ),
                  onChanged: (kullaniciSifre) {
                    setState(() {
                      alinanSifre = kullaniciSifre;
                    });
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 25),
          //* Giriş Yap Butonu
          ElevatedButton(
            child: const Text("GİRİŞ YAP"),
            onPressed: () {
              if (alinanKullanici == adminKullaniciAdi &&
                  alinanSifre == adminKullaniciSifresi) {
                print("tebrikler");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const IsletmeAnaSayfa(),
                  ),
                );
              } else {
                print("hatali");
              }
            },
          ),
        ],
      ),
    );
  }
}
