import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:odevdort/anasayfa.dart';

class Ysayfasi extends StatefulWidget {
  const Ysayfasi({super.key});

  @override
  State<Ysayfasi> createState() => _YsayfasiState();
}

class _YsayfasiState extends State<Ysayfasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sayfa Geçişi | Ödev 4"), backgroundColor: Colors.blue,),
      body: Center(
        child: Column( mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Y Sayfası", style: TextStyle(fontSize: 30, color: Colors.grey),),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Anasayfa()));
            },
                child: Text("Anasayfa")),
          ],
        ),
      ),
    );
  }
}
