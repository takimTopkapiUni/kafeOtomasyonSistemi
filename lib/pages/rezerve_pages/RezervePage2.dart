import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:kafe_uygulamasi/pages/AnaSayfa.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../kayit_ol.dart';

class RezervePage2 extends StatefulWidget {
  const RezervePage2({Key? key}) : super(key: key);
//Masa 3 Rezerve Sayfası
  @override
  State<RezervePage2> createState() => _RezervePageState();
}

class _RezervePageState extends State<RezervePage2> {
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
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    keyboardType: TextInputType
                        .emailAddress, // Klavyede @ işaretini öne çıkarıyor
                    onChanged: (alinanMail) {
                      setState(() {
                        email = alinanMail;
                      });
                    },
                    validator: (alinanMail) {
                      if (alinanMail!.isEmpty) {
                        return "Mail boş bırakılamaz";
                      }
                      //Hatalı mail girildiğinde bu uyarı çıkacak
                      else if (!EmailValidator.validate(alinanMail)) {
                        return "Geçerli mail giriniz";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Email",
                      labelStyle: const TextStyle(color: Colors.black),
                      hintText: "Mailinizi Giriniz",
                      hintStyle: const TextStyle(color: Colors.black),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    onChanged: (alinanParola) {
                      parola = alinanParola;
                    },
                    validator: (alinanParola) {
                      if (alinanParola!.isEmpty) {
                        return "Şifre boş bırakılamaz";
                      } else if (alinanParola.length < 6) {
                        return "Şifre en az 6 karakter olmalı";
                      } else {
                        return null;
                      }
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
