import 'package:learningdart/nesne_tabanli_programlama/static_kullanimi.dart';

void main(){
  var a = ASinifi();
  
  
  //Standart Kullanımı;
  //print(a.degisken);
  
  //Sanal Nesne - İsimsiz Nesne (Bu kullanım performans için daha az tercih edilir.)
  //print((ASinifi().degisken));
  //ASinifi().metod();
  
  //Static Kullanımı; (BU KULLANİM İÇİN STATİC KEYWORD'ÜNÜN EKLİ OLMASI LAZIM.)
  print(ASinifi.degisken);
  ASinifi.metod();
}