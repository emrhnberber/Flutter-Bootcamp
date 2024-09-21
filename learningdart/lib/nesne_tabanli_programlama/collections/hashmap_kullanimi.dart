import 'dart:collection';

void main(){

  //HASHMAP KEY:VALUE ŞEKLİNDE KULLANILIR.
  //BURADA İNDEXLER 0 DAN DEĞİL 1 DEN BAŞLAR.

  //Tanımlamalar
  var sayilar = {"Bir":1,"İki":2};
  var iller = HashMap<int, String>();

  //Değer Atama
  iller[16] = "Bursa";
  iller[34] = "İstanbul";
  print(iller);

  //Güncelleme
  iller[16]  = "Yeni Bursa";
  print(iller);

  //Veri Okuma
  String il = iller[34]!;
  print(il);

  //İndexlerini Çekme (.keys kullanılır)

  for(var test in iller.keys){
    print("$test ${iller[test]}");
  };

  //İndex Silme
  iller.remove(16);

  //Sıfırlama
  iller.clear();

}