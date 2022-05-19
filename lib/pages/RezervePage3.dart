import 'package:flutter/material.dart';
import 'package:kafe_uygulamasi/pages/AnaSayfa.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'kayit_ol.dart';

class RezervePage3 extends StatefulWidget {
  const RezervePage3({Key? key}) : super(key: key);
//Masa 4 Rezerve Sayfası
  @override
  State<RezervePage3> createState() => _RezervePageState();
}

class _RezervePageState extends State<RezervePage3> {
  @override
  late String email, parola;
  var _formAnahtari = GlobalKey<FormState>();
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
              key: _formAnahtari,
              child: Column(
                children: [
                  TextFormField(
                    onChanged: (alinanMail) {
                      setState(() {
                        email = alinanMail;
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
                    onChanged: (alinanParola) {
                      parola = alinanParola;
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
                girisYap();
              },
            ),
            //*Kayıt olma ekranına yönlendiren buton.
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const KayitOl(),
                  ),
                );
              },
              child: const Text("Hesabınız yok mu?"),
            ),
          ],
        ),
      ),
    );
  }

  void girisYap() {
    if (_formAnahtari.currentState!.validate()) {
      FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: parola)
          .then((user) {
        Navigator.push(context, MaterialPageRoute(builder: (_) => AnaSayfa()));
      });
    }
  }
}
