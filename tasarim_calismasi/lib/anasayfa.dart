import 'package:flutter/material.dart';
import 'package:tasarim_calismasi/renkler.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override

  Widget build(BuildContext context) {

    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;
    print("Ekran Yüksekliği : $ekranYuksekligi");
    print("Ekran Genişliği : $ekranGenisligi");

    var d = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Pizza", style: TextStyle(color: yaziRenk1, fontFamily: "PizzaFont", fontSize: 30),),
        backgroundColor: anaRenk,
        centerTitle: true,

      ),
      body: Column( mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Text(d!.pizzaBaslik, style: TextStyle(color: anaRenk, fontSize: 36, fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Image.asset("resimler/pizza_resim.png"),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Chip(icerik: d.peynirYazi),
                Chip(icerik: d.sucukYazi),
                Chip(icerik: d.zeytinYazi),
                Chip(icerik: d.biberYazi),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(d.teslimatSure, style: TextStyle(color: yaziRenk2, fontSize: 22, fontWeight: FontWeight.bold),),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(d.teslimatBaslik, style: TextStyle(color: anaRenk, fontSize: 22, fontWeight: FontWeight.bold),),
                ),
                Text(d.pizzaAciklama, style: TextStyle(color: yaziRenk2, fontSize: 22), textAlign: TextAlign.center),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(d!.fiyat, style: TextStyle(color: yaziRenk2, fontSize: 44, fontWeight: FontWeight.bold),),
                SizedBox(width: 200, height: 50,
                  child: TextButton(onPressed: (){},
                    child: Text(d.buttonYazi, style: TextStyle(color: yaziRenk1, fontSize: 22),),
                    style: TextButton.styleFrom(
                        backgroundColor: anaRenk,
                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Chip extends StatelessWidget {
  String icerik;


  Chip({required this.icerik});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){},
      style: TextButton.styleFrom(backgroundColor: anaRenk),
      child: Text(icerik, style: TextStyle(color: yaziRenk1),),
    );
  }
}

