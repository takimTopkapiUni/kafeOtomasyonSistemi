import 'package:flutter/material.dart';
import 'package:kafe_uygulamasi/pages/AnaSayfa.dart';
import 'package:firebase_core/firebase_core.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    theme: ThemeData.dark(),
    debugShowCheckedModeBanner: false,
    home: AnaSayfa(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  String adminKullaniciAdi = "admin";
  String adminKullaniciSifresi = "1234";
  late String alinanKullanici, alinanSifre;

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kafe Otomasyon',
      home: AnaSayfa(),
    );
  }
}
