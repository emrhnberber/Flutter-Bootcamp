import 'package:learningdart/nesne_tabanli_programlama/override_kullanimi/hayvan.dart';
import 'package:learningdart/nesne_tabanli_programlama/override_kullanimi/kedi.dart';
import 'package:learningdart/nesne_tabanli_programlama/override_kullanimi/kopek.dart';
import 'package:learningdart/nesne_tabanli_programlama/override_kullanimi/memeli.dart';

void main(){
  var hayvan = Hayvan();
  var memeli = Memeli();
  var kedi = Kedi();
  var kopek = Kopek();

  hayvan.sesCikar(); // Kalıtım yok, kendi metoduna erişti.
  memeli.sesCikar(); //Kalıtım var, üst sınıfın(hayvan) metoduna erişti.
  kedi.sesCikar(); //Kalıtım var, kendi metoduna erişti.
  kopek.sesCikar(); //Kalıtım var, kendi metoduna erişti.nn
}