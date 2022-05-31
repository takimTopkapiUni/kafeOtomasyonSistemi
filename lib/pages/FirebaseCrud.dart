import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MaterialApp(
    theme: ThemeData.dark(),
    debugShowCheckedModeBanner: false,
    home: FirebaseCrud(),
  ));
}

class FirebaseCrud extends StatefulWidget {
  @override
  _FirebaseCrudState createState() => _FirebaseCrudState();
}

class _FirebaseCrudState extends State<FirebaseCrud> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("crud islemeri"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            StreamBuilder(
              stream: FirebaseFirestore.instance.collection('menu').snapshots(),
              builder: (BuildContext context, AsyncSnapshot alinanVeri) {
                if (alinanVeri.hasError)
                  return Text("aktarim basarasiz");
                else if (alinanVeri == null)
                  return CircularProgressIndicator();
                else {
                  print("gelmesi lazim");
                  return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: alinanVeri.data.docs.length,
                      itemBuilder: (context, index) {
                        DocumentSnapshot satirVerisi =
                            alinanVeri.data.docs[index];

                        return Padding(
                          padding: EdgeInsets.all(5),
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
}
