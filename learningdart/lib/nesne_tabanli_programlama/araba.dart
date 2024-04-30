import 'package:learningdart/nesne_tabanli_programlama/araba_main.dart';

void main(){
  var bmw = Araba(renk: "Mavi", hiz: 100, calisiyorMu: true);

  print("---------------------");
  print("Renk: ${bmw.renk}");
  print("Max Hız: ${bmw.hiz}");
  print("Çalışır durumda mı? ${bmw.calisiyorMu}");

  //Değer değiştirme/atama
  bmw.renk = "Kırmızı";
  bmw.hiz = 200;
  bmw.calisiyorMu = true;

  bmw.hizlan(25);
  bmw.bilgiAl(); //ARABA_MAİN.DART İÇERİSİNDEKİ CLASSDAN VERİYİ ÇEKİYOR.
}