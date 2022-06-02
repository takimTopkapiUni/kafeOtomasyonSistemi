import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Masa3Menu extends StatefulWidget {
  const Masa3Menu({Key? key}) : super(key: key);

  @override
  State<Masa3Menu> createState() => _Masa3MenuState();
}

class _Masa3MenuState extends State<Masa3Menu> {
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
                child: Text("Masa 3 Sepet"),
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
                        veriSil();
                      },
                      child: const Text("Ürünü Sil"),
                    ),
                    Container(
                      height: 30,
                      width: 120,
                      alignment: Alignment.center,
                      child: Text("Sepetteki Ürünler"),
                    ),
                    StreamBuilder(
                      stream: FirebaseFirestore.instance
                          .collection('masa3')
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

  void veriSil() {
    DocumentReference veriSil =
        FirebaseFirestore.instance.collection('masa3').doc(id);
    veriSil
        .delete()
        .whenComplete(() => {Fluttertoast.showToast(msg: "ürün silindi")});
  }
}
