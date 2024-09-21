void main(){
  //Tanımlama
  var plakalar = [16,23,6]; //Klasik list tanımlamalardan biridir. İndexi 0 dan başlar.
  var meyveler = <String>[];

  //Veri Ekleme
  meyveler.add("Kiraz"); //0. index'e eklendi.
  meyveler.add("Muz");//1. index'e eklendi.
  print(meyveler);

  //Güncelleme
  meyveler[1] = "Yeni Muz"; //1. index'teki değeri değiştirdi.
  print(meyveler);

  //Insert
  // (ADD'DEN FARKLI OLARAK İSTEDİĞİMİZ İNDEXE YENİ TANIMLAMA YAPMAMIZI SAĞLAR.
  // EĞER BELİRTİLEN İNDEXİN İÇİN DOLUYSA, TÜM İFADELERİ BİR İLERİ TAŞIYARAK BELİRTİLEN İNDEXİ BOŞALDIR VE EKLER.
  meyveler.insert(1, "Portakal");
  print(meyveler);

  //Veri Okuma
  //BELİRTİLEN İNDEX'TEKİ DEĞERİ ATAR.
  String meyve = meyveler[1];
  print(meyve);

  print("Boyut: ${meyveler.length}"); //Meyveler listesinin kaç indexli olduğunu gösterir.

  //For Each Döngüsü
  //Meyveler listesindeki tüm değerleri sırayla meyve listesine aktarıp yazdırdık.
  for(var meyve in meyveler){
    print("Sonuç : $meyve");
  }

  //Reversed
  //Var olan listeyi tersine çevirir.
  var reversedtest = meyveler.reversed.toList();
  print(reversedtest);

  //Belirtilen indexteki ifadeyi siler.
  meyveler.removeAt(1);
  print(meyveler);

  //Listenin içini tamamen temizler.
  meyveler.clear();
  print(meyveler);
}