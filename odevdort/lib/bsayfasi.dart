import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:odevdort/ysayfasi.dart';

class Bsayfasi extends StatefulWidget {
  const Bsayfasi({super.key});

  @override
  State<Bsayfasi> createState() => _BsayfasiState();
}

class _BsayfasiState extends State<Bsayfasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sayfa Geçişi | Ödev 4"), backgroundColor: Colors.blue,),
      body: Center(
        child: Column( mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("B Sayfası", style: TextStyle(fontSize: 30, color: Colors.grey),),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Ysayfasi()));
            },
                child: Text("Y Sayfası")),
          ],
        ),
      ),
    );
  }
}