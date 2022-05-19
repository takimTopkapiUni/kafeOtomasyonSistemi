import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:kafe_uygulamasi/pages/AnaSayfa.dart';


class KayitOl extends StatefulWidget {
  const KayitOl({Key? key}) : super(key: key);

  @override
  State<KayitOl> createState() => _KayitOlState();
}

class _KayitOlState extends State<KayitOl> {
  @override
  late String kullaniciAdi, parola;
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
                    onChanged: (alinanAd) {
                      setState(() {
                        kullaniciAdi = alinanAd;
                      });
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "kullanıcı adı",
                      labelStyle: const TextStyle(color: Colors.black),
                      hintText: "kullanıcı adı Giriniz",
                      hintStyle: const TextStyle(color: Colors.black),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    onChanged: (alinanParola) {
                      setState(() {
                        parola = alinanParola;
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
                kayitEkle();
              },
            ),
          ],
        ),
      ),
    );
  }
    void kayitEkle() {
   if(_formAnahtari.currentState!.validate()){
     FirebaseAuth.instance.createUserWithEmailAndPassword(email: kullaniciAdi, password: parola).then((user) {
       Navigator.push(context, MaterialPageRoute(builder: (_) => AnaSayfa()));
     });
   }
  }
}

