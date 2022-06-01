import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MaterialApp(
    theme: ThemeData.dark(),
    debugShowCheckedModeBanner: false,
    home: const Menu(),
  ));
}

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  late String id, name, price;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 100),
            Form(
              child: Column(
                children: [
                  TextFormField(
                    onChanged: (String Id) {
                      setState(() {
                        id = Id;
                      });
                    },
                    decoration: InputDecoration(
                      labelText: "ID",
                      labelStyle: const TextStyle(color: Colors.black),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  TextFormField(
                    onChanged: (String ad) {
                      setState(() {
                        name = ad;
                      });
                    },
                    decoration: InputDecoration(
                      labelText: "Ürün İsmi",
                      labelStyle: const TextStyle(color: Colors.black),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  TextFormField(
                    onChanged: (String fiyat) {
                      setState(() {
                        price = fiyat;
                      });
                    },
                    decoration: InputDecoration(
                      labelText: "Ürün Fiyatı",
                      labelStyle: const TextStyle(color: Colors.black),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    veriEkle();
                  },
                  child: const Text("Ürün Ekle"),
                ),
                ElevatedButton(
                  onPressed: () {
                    veriSil();
                  },
                  child: const Text("Ürün Sil"),
                ),
                ElevatedButton(
                  onPressed: () {
                    veriGuncelle();
                  },
                  child: const Text("Ürün Güncelle"),
                ),
              ],
            ),
            StreamBuilder(
              stream: FirebaseFirestore.instance.collection('menu').snapshots(),
              builder: (BuildContext context, AsyncSnapshot alinanVeri) {
                if (alinanVeri.hasError) {
                  return const Text("aktarim basarasiz");
                } else if (alinanVeri == null) {
                  return const CircularProgressIndicator();
                } else {
                  print("GELMESI LAZIM");
                  return ListView.builder(
                      shrinkWrap: true,
                      itemCount: alinanVeri.data.docs.length,
                      itemBuilder: (context, index) {
                        DocumentSnapshot satirVerisi =
                            alinanVeri.data.docs[index];

                        return Padding(
                          padding: const EdgeInsets.all(5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(child: Text(satirVerisi['id'])),
                              Expanded(child: Text(satirVerisi['product'])),
                              Expanded(child: Text(satirVerisi['price'])),
                            ],
                          ),
                        );
                      });
                }
              },
            )
          ],
        ),
      ),
    );
  }

  void veriEkle() {
    DocumentReference veriYolu =
        FirebaseFirestore.instance.collection('menu').doc(id);
    Map<String, dynamic> urunler = {'id': id, 'product': name, 'price': price};
    veriYolu
        .set(urunler)
        .whenComplete(() => {Fluttertoast.showToast(msg: "ürün eklendi")});
  }

  void veriSil() {
    DocumentReference veriSil =
        FirebaseFirestore.instance.collection('menu').doc(id);
    veriSil
        .delete()
        .whenComplete(() => {Fluttertoast.showToast(msg: "ürün silindi")});
  }

  void veriGuncelle() {
    DocumentReference veriGuncellemeYolu =
        FirebaseFirestore.instance.collection('menu').doc(id);
    Map<String, dynamic> guncellenecekVeri = {
      'id': id,
      'product': name,
      'price': price
    };
    veriGuncellemeYolu
        .update(guncellenecekVeri)
        .whenComplete(() => {Fluttertoast.showToast(msg: "ürün güncellendi")});
  }
}
