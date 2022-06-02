import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Masa2_Menu extends StatefulWidget {
  const Masa2_Menu({Key? key}) : super(key: key);

  @override
  State<Masa2_Menu> createState() => _Masa2_MenuState();
}

class _Masa2_MenuState extends State<Masa2_Menu> {
  late String id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 30,
                width: 100,
                color: Colors.green,
                child: Text("Masa 2 Menü"),
              ),
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
                        labelText: "Ürün İD'si Girin",
                        labelStyle: const TextStyle(color: Colors.black),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        veriEkle();
                      },
                      child: const Text("Ürünü Ekle"),
                    ),
                    Container(
                      height: 30,
                      width: 120,
                      alignment: Alignment.center,
                      child: Text("Menüler"),
                    ),
                    StreamBuilder(
                      stream: FirebaseFirestore.instance
                          .collection('menu')
                          .snapshots(),
                      builder:
                          (BuildContext context, AsyncSnapshot alinanVeri) {
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Expanded(child: Text(satirVerisi['id'])),
                                      Expanded(
                                          child: Text(satirVerisi['product'])),
                                      Expanded(
                                          child: Text(satirVerisi['price'])),
                                    ],
                                  ),
                                );
                              });
                        }
                      },
                    ),
                  ],
                ),
              ),
            ]),
      ),
    );
  }

  void veriEkle() {
    DocumentReference veriYolu =
        FirebaseFirestore.instance.collection('masa2').doc(id);
    Map<String, dynamic> urunler = {
      'id': id,
    };
    veriYolu
        .set(urunler)
        .whenComplete(() => {Fluttertoast.showToast(msg: "ürün eklendi")});
  }
}
