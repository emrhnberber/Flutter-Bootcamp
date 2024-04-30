import 'package:learningdart/nesne_tabanli_programlama/fonksiyonlar.dart';

void main(){
  var f = Fonksiyonlar();

  f.selamla();

  String gelensonuc = f.selamla2();
  print("Gelen Sonuç: $gelensonuc");

  f.selamla3("Emo");

  f.toplam(10, 20);
}