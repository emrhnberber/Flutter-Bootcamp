import 'package:calisma_yapisi/kisiler.dart';
import 'package:calisma_yapisi/oyunekrani.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();

}

class _AnasayfaState extends State<Anasayfa> {

  int sayac = 0;
  bool kontrol = false;

  @override

  //İnitState uygulama/sayfa açıldığında yanlızca 1 kere çalışır.
  void initState(){
    super.initState();
    print("İnitState() çalıştı.");
  }


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Anasayfa"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Sonuç: $sayac"),
            ElevatedButton(onPressed: (){
                setState(() {
                  sayac = sayac +1;
                });
            }, child: const Text("Tıkla")),

            ElevatedButton(onPressed: (){
              var kisi = Kisiler(ad: "Ahmet", yas: 18, boy: 1.70, bekar: true);
              Navigator.push(context, MaterialPageRoute(builder: (context) => OyunEkrani(kisi: kisi)))
                  .then((Value){
                    print("Anasayfaya dönüldü.");
              });
            }, child: const Text("SAYFA DEĞİŞTİRME")),

            Visibility(visible: kontrol, child: Text("Merhaba")), //KONTROL DEĞERİ TRUE İSE GÖRÜNÜR DEĞİLSE GÖRÜNMEZ.
            Text(kontrol? "Merhaba":"Görüşürüz."), //True ise "Merhaba" False ise "Görüşürüz" yazar.
            Text(kontrol? "Renk Yeşil ":"Renk Kırmızı.", style: TextStyle(color: kontrol? Colors.green : Colors.red),), //True ise Yeşil False ise Kırmızı renk yazar.

            //Parantezler içinde durum kontrolü yapılabilir. Aşağıda True ise Merhaba, False ise Görüşürüz örneği mevcut.
            ((){
              if(kontrol == true){
                return const Text("Merhaba");
              }else{
                return const Text("Görüşürüz.");
              }
            }()),
            ElevatedButton(onPressed: (){
              setState(() {
                kontrol = true;
              });
            }, child: const Text("Durum 11 (True)")),

            ElevatedButton(onPressed: (){
              setState(() {
                kontrol = false;
              });
            }, child: const Text("Durum 2 (False)")),

          ],
        ),
      ),
    );
  }
}
