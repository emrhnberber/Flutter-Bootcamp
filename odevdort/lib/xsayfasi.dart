import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:odevdort/ysayfasi.dart';

class Xsayfasi extends StatefulWidget {
  const Xsayfasi({super.key});

  @override
  State<Xsayfasi> createState() => _XsayfasiState();
}

class _XsayfasiState extends State<Xsayfasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sayfa Geçişi | Ödev 4"), backgroundColor: Colors.blue,),
      body: Center(
        child: Column( mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("X Sayfası", style: TextStyle(fontSize: 30, color: Colors.grey),),
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
