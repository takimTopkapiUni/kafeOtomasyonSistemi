import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Masa1_Sepet extends StatefulWidget {
  const Masa1_Sepet({Key? key}) : super(key: key);

  @override
  State<Masa1_Sepet> createState() => _Masa1_SepetState();
}

class _Masa1_SepetState extends State<Masa1_Sepet> {
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
              child: Text("Masa 1 Sepet"),
            ),
            StreamBuilder(
              stream:
                  FirebaseFirestore.instance.collection('masa1').snapshots(),
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
                              ElevatedButton(
                                onPressed: () {
                                  veriSil();
                                },
                                child: const Text("Ürünü Sil"),
                              ),
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
    );
  }
}

void veriSil() {}
