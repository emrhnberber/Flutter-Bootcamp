import 'package:learningdart/nesne_tabanli_programlama/collections/ogrenciler.dart';

void main(){
  var o1 = Ogreenciler(no: 674, ad: "Emirhan", sinif: "12/A");
  var o2 = Ogreenciler(no: 764, ad: "Börek", sinif: "12/A");
  var o3 = Ogreenciler(no: 861, ad: "Muhammad", sinif: "12/A");

  var ogrencilerListesi = <Ogreenciler>[];
  ogrencilerListesi.add(o1);
  ogrencilerListesi.add(o2);
  ogrencilerListesi.add(o3);
  
  for(var o in ogrencilerListesi){
    print("No : ${o.no} - Ad : ${o.ad} - Sınıf : ${o.sinif}");
  }

  //Sorting
  //Kıyaslama yani örnek o1'in nosu ile o2'nin nosunu kıyaslama.
  print("---------- Sayısal : Küçükten > Büyüğe");
  Comparator<Ogreenciler> s1 = (x,y) => x.no.compareTo(y.no);
  ogrencilerListesi.sort(s1);

  for(var o in ogrencilerListesi){
    print("No : ${o.no} - Ad : ${o.ad} - Sınıf : ${o.sinif}");
  }

  print("---------- Sayısal : Büyükten > Küçüğe");
  Comparator<Ogreenciler> s2 = (x,y) => y.no.compareTo(x.no);
  ogrencilerListesi.sort(s2);

  for(var o in ogrencilerListesi){
    print("No : ${o.no} - Ad : ${o.ad} - Sınıf : ${o.sinif}");
  }


  //Filtreleme

  print("------------- Filtreleme 1 Sayısal -----------");
  Iterable<Ogreenciler> f1 = ogrencilerListesi.where((ogrenciNesnesi){
     //Öğrenci numarası 100'den büyük, 800'den küçük olanları getir.
    return ogrenciNesnesi.no > 100 && ogrenciNesnesi.no < 800;
  });

  var liste1 = f1.toList();
  for(var o in liste1){
    print("No : ${o.no} - Ad : ${o.ad} - Sınıf : ${o.sinif}");
  }


  print("------------- Filtreleme 2 Metinsel -----------");
  Iterable<Ogreenciler> f2 = ogrencilerListesi.where((ogrenciNesnesi){
    //İçeriside E harfi bulunan nesneleri getir.
    return ogrenciNesnesi.ad.contains("E");
  });

  var liste2 = f2.toList();
  for(var o in liste2){
    print("No : ${o.no} - Ad : ${o.ad} - Sınıf : ${o.sinif}");
  }
}