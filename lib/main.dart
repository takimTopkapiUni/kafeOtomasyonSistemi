import 'package:flutter/material.dart';
import 'package:kafe_uygulamasi/pages/AnaSayfa.dart';

void main() => runApp(const MyApp());

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
    return const AnaSayfa();
  }
}
