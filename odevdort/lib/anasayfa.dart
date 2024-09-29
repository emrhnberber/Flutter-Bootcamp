import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:odevdort/asayfasi.dart';
import 'package:odevdort/bsayfasi.dart';
import 'package:odevdort/xsayfasi.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sayfa Geçişi | Ödev 4"), backgroundColor: Colors.blue,),
      body: Center(
        child: Column( mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Asayfasi()));
            },
                child: Text("A Sayfası")),

            Text("Anasayfa", style: TextStyle(fontSize: 30, color: Colors.grey),),

            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Xsayfasi()));
            },
                child: Text("X Sayfası")),
          ],
        ),
      ),
    );
  }
}
