import 'package:calisma_yapisi/bottom_nav_kullanimi/sayfa_bir.dart';
import 'package:calisma_yapisi/bottom_nav_kullanimi/sayfa_iki.dart';
import 'package:calisma_yapisi/bottom_nav_kullanimi/sayfa_uc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigationSayfa extends StatefulWidget {
  const BottomNavigationSayfa({super.key});

  @override
  State<BottomNavigationSayfa> createState() => _BottomNavigationSayfaState();
}

class _BottomNavigationSayfaState extends State<BottomNavigationSayfa> {
  @override

  int secilenIndeks = 0;
  var sayfalar = [const SayfaBir(), const SayfaIki(), const SayfaUc()];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation"),),
      body: sayfalar[secilenIndeks],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.looks_one), label: "Bir"),
            BottomNavigationBarItem(icon: Icon(Icons.looks_two), label: "İki"),
            BottomNavigationBarItem(icon: Icon(Icons.looks_3), label: "Üç"),
          ],
        currentIndex: secilenIndeks,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        onTap: (indeks){
            setState(() {
              secilenIndeks = indeks;
            });
        },
      )
      );
  }
}
