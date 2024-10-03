import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override

  String sonuc = "0";
  double? birincisayi;
  double? ikincisayi;
  String operator = "";

  @override
  void initState() {
    // TODO: implement initState
    sonuc = "0";
  }

  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xFF1f1d1c),
        appBar: AppBar(title: Text("Hesap Makinesi", style: TextStyle(color: Colors.white),),backgroundColor: Color(0xFF1f1d1c),),
      body:
      //SONUÇ TEXT ROW'U
      Column(mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row( mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text("$sonuc", style: TextStyle(fontSize: 60, color: Colors.white)),
          ],
        ),
          //BUTONLAR COLUMN'U
          Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              // 7 BUTONU
              GestureDetector(
                onTap: (){
                  setState(() {
                    if(sonuc == "0"){
                      sonuc = "7";
                    }else{
                      sonuc = sonuc + "7";
                    }
                  });
                },
                child: Container(
                    width: 110,
                    height: 90,
                    decoration: BoxDecoration(color: Colors.grey,
                        borderRadius: BorderRadius.circular(5)),
                  child: Center(child: Text("7", style: TextStyle(fontSize: 25, color: Color(0xFF171717))),)),
              ),

              //8 BUTONU
              GestureDetector(
                onTap: (){
                  setState(() {
                    if(sonuc == "0"){
                      sonuc = "8";
                    }else{
                      sonuc = sonuc + "8";
                    }
                  });
                },
                child: Container(
                    width: 110,
                    height: 90,
                    decoration: BoxDecoration(color: Colors.grey,
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(child: Text("8", style: TextStyle(fontSize: 25, color: Color(0xFF171717))),)),
              ),

              //9 BUTONU
              GestureDetector(
                onTap: (){
                  setState(() {
                    if(sonuc == "0"){
                      sonuc = "9";
                    }else{
                      sonuc = sonuc + "9";
                    }
                  });
                },
                child: Container(
                    width: 110,
                    height: 90,
                    decoration: BoxDecoration(color: Colors.grey,
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(child: Text("9", style: TextStyle(fontSize: 25, color: Color(0xFF171717))),)),
              ),

              //ARTI BUTONU
              GestureDetector(
                onTap: (){
                  setState(() {
                    birincisayi = double.parse(sonuc);
                    operator = "+";
                    sonuc = "0";
                  });
                },
                child: Container(
                    width: 110,
                    height: 90,
                    decoration: BoxDecoration(color: Color(0xFF545252),
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(child: Text("+", style: TextStyle(fontSize: 25, color: Color(0xFF171717))),)),
              ),

            ],
          ),

          Padding(
            padding: const EdgeInsets.only(top: 2.0),
            child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                // 4 BUTONU
                GestureDetector(
                  onTap: (){
                    setState(() {
                      if(sonuc == "0"){
                        sonuc = "4";
                      }else{
                        sonuc = sonuc + "4";
                      }
                    });
                  },
                  child: Container(
                      width: 110,
                      height: 90,
                      decoration: BoxDecoration(color: Colors.grey,
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(child: Text("4", style: TextStyle(fontSize: 25, color: Color(0xFF171717))),)),
                ),

                //5 BUTONU
                GestureDetector(
                  onTap: (){
                    setState(() {
                      if(sonuc == "0"){
                        sonuc = "5";
                      }else{
                        sonuc = sonuc + "5";
                      }
                    });
                  },
                  child: Container(
                      width: 110,
                      height: 90,
                      decoration: BoxDecoration(color: Colors.grey,
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(child: Text("5", style: TextStyle(fontSize: 25, color: Color(0xFF171717))),)),
                ),

                //6 BUTONU
                GestureDetector(
                  onTap: (){
                    setState(() {
                      if(sonuc == "0"){
                        sonuc = "6";
                      }else{
                        sonuc = sonuc + "6";
                      }
                    });
                  },
                  child: Container(
                      width: 110,
                      height: 90,
                      decoration: BoxDecoration(color: Colors.grey,
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(child: Text("6", style: TextStyle(fontSize: 25, color: Color(0xFF171717))),)),
                ),

                //EKSİ BUTONU
                GestureDetector(
                  onTap: (){
                    setState(() {
                      birincisayi = double.parse(sonuc);
                      operator = "-";
                      sonuc = "0";
                    });
                  },
                  child: Container(
                      width: 110,
                      height: 90,
                      decoration: BoxDecoration(color: Color(0xFF545252),
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(child: Text("-", style: TextStyle(fontSize: 25, color: Color(0xFF171717))),)),
                ),

              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 2.0),
            child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                // 1 BUTONU
                GestureDetector(
                  onTap: (){
                    setState(() {
                      if(sonuc == "0"){
                        sonuc = "1";
                      }else{
                        sonuc = sonuc + "1";
                      }
                    });
                  },
                  child: Container(
                      width: 110,
                      height: 90,
                      decoration: BoxDecoration(color: Colors.grey,
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(child: Text("1", style: TextStyle(fontSize: 25, color: Color(0xFF171717))),)),
                ),

                //2 BUTONU
                GestureDetector(
                  onTap: (){
                    setState(() {
                      if(sonuc == "0"){
                        sonuc = "2";
                      }else{
                        sonuc = sonuc + "2";
                      }
                    });
                  },
                  child: Container(
                      width: 110,
                      height: 90,
                      decoration: BoxDecoration(color: Colors.grey,
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(child: Text("2", style: TextStyle(fontSize: 25, color: Color(0xFF171717))),)),
                ),

                //3 BUTONU
                GestureDetector(
                  onTap: (){
                    setState(() {
                      if(sonuc == "0"){
                        sonuc = "3";
                      }else{
                        sonuc = sonuc + "3";
                      }
                    });
                  },
                  child: Container(
                      width: 110,
                      height: 90,
                      decoration: BoxDecoration(color: Colors.grey,
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(child: Text("3", style: TextStyle(fontSize: 25, color: Color(0xFF171717))),)),
                ),

                //ÇARPI BUTONU
                GestureDetector(
                  onTap: (){
                    setState(() {
                      birincisayi = double.parse(sonuc);
                      operator = "*";
                      sonuc = "0";
                    });
                  },
                  child: Container(
                      width: 110,
                      height: 90,
                      decoration: BoxDecoration(color: Color(0xFF545252),
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(child: Text("X", style: TextStyle(fontSize: 25, color: Color(0xFF171717))),)),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 2.0),
            child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                //CE(SIFIRLAMA) BUTONU
                GestureDetector(
                  onTap: (){
                    setState(() {
                      sonuc = "0";
                    });
                  },
                  child: Container(
                      width: 110,
                      height: 90,
                      decoration: BoxDecoration(color: Colors.grey,
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(child: Text("CE", style: TextStyle(fontSize: 25, color: Color(0xFF171717))),)),
                ),

                //0 BUTONU
                GestureDetector(
                  onTap: (){
                    setState(() {
                      if(sonuc == "0"){
                        sonuc = "0";
                      }else{
                        sonuc = sonuc + "0";
                      }
                    });
                  },
                  child: Container(
                      width: 110,
                      height: 90,
                      decoration: BoxDecoration(color: Colors.grey,
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(child: Text("0", style: TextStyle(fontSize: 25, color: Color(0xFF171717))),)),
                ),

                //ONDALIK BUTONU
                GestureDetector(
                  onTap: (){
                    setState(() {
                      if(sonuc == "0"){
                        sonuc = "0";
                      }else{
                        sonuc = sonuc + ".";
                      }
                    });
                  },
                  child: Container(
                      width: 110,
                      height: 90,
                      decoration: BoxDecoration(color: Colors.grey,
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(child: Text(",", style: TextStyle(fontSize: 25, color: Color(0xFF171717))),)),
                ),

                //EŞİTTİR BUTONU
                GestureDetector(
                  onTap: (){
                    setState(() {
                      ikincisayi = double.parse(sonuc);
                      double kesinsonuc = 0;

                      if(operator == "+"){
                        kesinsonuc = birincisayi! + ikincisayi!;
                      }else if(operator == "-"){
                        kesinsonuc = birincisayi! - ikincisayi!;
                      }else if(operator == "*"){
                        kesinsonuc = birincisayi! * ikincisayi!;
                      }

                      sonuc = (kesinsonuc % 1 == 0 ? kesinsonuc.toInt().toString() : kesinsonuc.toString());

                    });
                  },
                  child: Container(
                      width: 110,
                      height: 90,
                      decoration: BoxDecoration(color: Color(0xFFeb8334),
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(child: Text("=", style: TextStyle(fontSize: 25, color: Color(0xFF171717))),)),
                ),
              ],
            ),
          ),


        ],
      ),


    );
  }
}
