class Fonksiyonlar{
  //Void: Geri dönüş değeri olmayan
  void selamla(){
    print("Selamlar");
  }

  //Return: Geri dönüş değeri olan
  String selamla2(){
    String sonuc = "Merhaba Emo";
    return sonuc;
  }

  //Parametre: Dışarıdan değer alma
  void selamla3(String isim){
    print("Hoşgeldin $isim");
  }

  //PARAMETRELER DÖNÜŞ DEĞERİ İLE BİRLİKTE DE KULLANILABİLİR.

  int toplam(int sayi1, int sayi2){
    int toplam = sayi1 + sayi2;
    print("Toplam: $toplam");
    return toplam;
  }
}