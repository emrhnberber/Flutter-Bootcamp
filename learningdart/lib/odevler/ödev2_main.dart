class Odev2{
  //ÖDEV 2 BÖLÜM 2
  int maashesapla(int kacSaatCalisti){
    int toplam;
    int ekMesaiSaat;

    if(kacSaatCalisti > 150){
      ekMesaiSaat = kacSaatCalisti - 150;
      toplam = kacSaatCalisti * 40 + ekMesaiSaat * 40;
    }
    else{
      toplam = kacSaatCalisti *40;
    }
    print("Bu ay ki maaşınız: $toplam TL.");
    return toplam;
  }

  //ÖDEV 2 BÖLÜM 3

  int otoparkucret(int kacSatKaldi){
    int toplam;
    int dusukucret;

    if(kacSatKaldi <= 1){
      toplam =50;
    }
    else{
      dusukucret = kacSatKaldi - 1;
      toplam = dusukucret*10+50;
    }
    print("Ödenecek Tutar: $toplam TL");
    return toplam;
  }
}