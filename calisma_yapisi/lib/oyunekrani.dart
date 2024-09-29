import 'package:calisma_yapisi/kisiler.dart';
import 'package:calisma_yapisi/sonucekrani.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OyunEkrani extends StatefulWidget {
  Kisiler kisi;
  OyunEkrani({required this.kisi});

  @override
  State<OyunEkrani> createState() => _OyunEkraniState();
}

class _OyunEkraniState extends State<OyunEkrani> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("OyunEkrani"),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: PopScope(
        canPop: true, //BURASI FALSE OLUR İSE GERİ BUTONU ÇALIŞMAZ.
        onPopInvoked: (canPopState){
          print("Navigasyon geri dönüş tuşu seçildi.");
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("${widget.kisi.ad} - ${widget.kisi.yas} - ${widget.kisi.boy} - ${widget.kisi.bekar}"),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>const SonucEkrani()));
              }, child: const Text("Bitti.")),
          ],
          ),
        ),
      ),
    );
  }
}
