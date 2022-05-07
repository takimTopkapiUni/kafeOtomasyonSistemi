import 'package:flutter/material.dart';

class KayitOl extends StatefulWidget {
  const KayitOl({Key? key}) : super(key: key);

  @override
  State<KayitOl> createState() => _KayitOlState();
}

class _KayitOlState extends State<KayitOl> {
  @override
  String musteriKullaniciAdi = "";
  String musteriKullaniciSifresi = "";
  late String alinanKullanici, alinanSifre;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
            //* Kayıt Ol Butonu
            ElevatedButton(
              child: const Text("KAYIT OL"),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: Colors.blueAccent.shade400,
                    content: Text(
                      "Kullanici Adi: $alinanKullanici\nSifre: $alinanSifre",
                      style: const TextStyle(
                          fontSize: 18),
                    ), //*Girilen değerlerin sisteme kayıt edilidğini kontrol etme amaçlı yapıldı.
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
