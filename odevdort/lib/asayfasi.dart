import 'package:flutter/material.dart';
import 'package:odevdort/bsayfasi.dart';

class Asayfasi extends StatefulWidget {
  const Asayfasi({super.key});

  @override
  State<Asayfasi> createState() => _AsayfasiState();
}

class _AsayfasiState extends State<Asayfasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sayfa Geçişi | Ödev 4"), backgroundColor: Colors.blue,),
      body: Center(
        child: Column( mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("A Sayfası", style: TextStyle(fontSize: 30, color: Colors.grey),),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Bsayfasi()));
            },
                child: Text("B Sayfası")),
          ],
        ),
      ),
    );
  }
}
