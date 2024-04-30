class Okul{
  String okulAdi;
  int okulYasi;
  bool depremeDayanikliMi;

  Okul({required this.okulAdi, required this.okulYasi, required this.depremeDayanikliMi});


  void yazdir(){
    String deprem = depremeDayanikliMi ? "Evet." : "Hayır."; // Eğer depremeDayanikliMi true ise 'evet', değilse 'hayır' döndürür.

    print("Okulun Adı: $okulAdi");
    print("Okulun Yaşı: $okulYasi");
    print("Okul Depreme Dayanıklı Mı?: $deprem");
  }
}