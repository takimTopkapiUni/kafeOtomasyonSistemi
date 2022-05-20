import 'package:flutter/material.dart';
import 'package:kafe_uygulamasi/pages/Menu.dart';
import 'package:kafe_uygulamasi/pages/isletme_pages/IsletmeMasa.dart';

class IsletmeAnaSayfa extends StatelessWidget {
  const IsletmeAnaSayfa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(text: "Menü"),
              Tab(
                text: "Masalar",
              ),
            ],
          ),
        ),
        body: const TabBarView(children: [Menu(), IsletmeMasa()]),
      ),
    );
  }
}
