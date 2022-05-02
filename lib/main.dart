import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  String adminKullaniciAdi = "admin";
  String adminKullaniciSifresi = "1234";
  late String alinanKullanici,alinanSifre;

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kafe Otomasyon',
      home: DefaultTabController(
        length: 2, // 2 Sekmeden oluşacak
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: const [
                Tab(
                  text: "MÜŞTERİ",
                ),
                Tab(
                  text: "İŞLETME",
                ),
              ],
            ),
            centerTitle: true,
            title: Text('Kafe Otomasyon Sistemi'),
          ),
          body: TabBarView(
            children: [MasaPage(), IsletmePage()],
          ),
        ),
      ),
    );
  }

  //*Masaların Göründüğü Kısım
  Widget MasaPage() {
    return SafeArea(
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
                  padding: EdgeInsets.all(5),
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 30,
                  children: <Widget>[
                    MasaOlustur(1, "Dolu"),
                    MasaOlustur(2, "Boş"),
                    MasaOlustur(3, "Dolu"),
                    MasaOlustur(4, "Boş"),
                    MasaOlustur(5, "Dolu"),
                    MasaOlustur(6, "Dolu"),
                    MasaOlustur(7, "Dolu"),
                    MasaOlustur(8, "Dolu"),
                    MasaOlustur(9, "Dolu"),
                    MasaOlustur(10, "Dolu"),
                    MasaOlustur(11, "Dolu"),
                    MasaOlustur(12, "Dolu"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  //*Masaları oluşturduğumuz method
  MasaOlustur(int masaNo, String doluMu) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: 25),
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
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
                  print("Masa $masaNo Rezerve Edildi");
                },
                child: Text(
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

  Widget IsletmePage() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(60.0),
            child: Container(
              child: CircleAvatar(
                maxRadius: 50,
                backgroundColor: Colors.blue.shade300,
                child: Icon(
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
                    labelStyle: TextStyle(color: Colors.black),
                    hintText: "Kullanıcı Adını Giriniz",
                    hintStyle: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(height: 10),
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
                    labelStyle: TextStyle(color: Colors.black),
                    hintText: "Şifrenizi Giriniz",
                    hintStyle: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 25),
          //* Giriş Yap Butonu
          ElevatedButton(
            child: Text("GİRİŞ YAP"),
            onPressed: () {
              if(alinanKullanici == adminKullaniciAdi && alinanSifre == adminKullaniciSifresi){
                print("tebrikler");
              }
              else{
                print("hatali");
              }
            },
            
          )
        ],
      ),
    );
  }
}
