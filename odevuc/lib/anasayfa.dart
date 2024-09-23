import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:odevuc/renkler.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Color(0xFF323635),
      appBar: AppBar(title: Text("Ödev 3", style: TextStyle(fontFamily: "BaslikFont"),),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Row( mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column( mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 300,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Image.asset("resimler/MindlyBeyazSunum.png"),
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 120),
                child: Text("Welcome to back Mindly!", style: TextStyle(color: Colors.white, fontFamily: "AciklamaFont", fontSize: 20),),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Chip(icerik: "Sign With Google", arkarenk: Color(0xFF464747), yazirenk: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Chip(icerik: "Sign With Apple", arkarenk: Color(0xFF464747), yazirenk: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Chip(icerik: "Sign With X", arkarenk: Color(0xFF464747), yazirenk: Colors.white),
              ),
              Text("----------     OR     ----------", style: TextStyle(color: Color(0xFFbac2c1), fontSize: 20),),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 20),
                child: Chip(icerik: "Sign With Email", arkarenk: anarenk, yazirenk: Colors.white),
              ), Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 3),
                    child: Text("Don't have an account?", style: TextStyle(color: Color(0xFFbac2c1), fontSize: 20),),
                  ),
                  Text("Sign Up!", style: TextStyle(color: Color(0xFF15b359), fontSize: 20),),
                ],
              )
            ],
          ),
        ],
      )
    );
  }
}


class Chip extends StatelessWidget {
  String icerik;
  var arkarenk;
  var yazirenk;

  Chip({required this.icerik, required this.arkarenk, required this.yazirenk});


  @override
  Widget build(BuildContext context) {
    return SizedBox(width: 350,
      child: TextButton(onPressed: (){}, child:
      Text(icerik, style: TextStyle(color: yazirenk,
        fontSize: 20,)
      ),
        style: TextButton.styleFrom(backgroundColor: arkarenk,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(7))),),
      ),
    );
  }
}
