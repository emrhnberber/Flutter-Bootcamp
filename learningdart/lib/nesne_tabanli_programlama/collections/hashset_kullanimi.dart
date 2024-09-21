import 'dart:collection';

//HASHSET İÇERİSİNE ATANAN DEĞERLERİ OTOMATİK KARIŞTIRMAK İÇİN TERCİH EDİLİR.
//HASHSET İLE SPOTİFYDAKİ KARIŞIK ÇAL GİBİ TÜM DEĞERLERİ İÇİNE EKLEYİP HER SEFERİNDE OTOMATİK KARIŞTIRMASI SAĞLANABİLİR.
// !!!! AYNI DEĞERDEN BİRDEN FAZLA EKLENEMEZ !!!!


void main(){
  //Tanımlama

  var plakalar = HashSet.from([16,23,6]); //Listdeki gibi istersek direkt başta atayabiliriz.
  //VEYA
  var meyveler = HashSet<String>(); //HashSeti oluşturup atamalarını sonra yapabiliriz.

  //Değer Atama
  meyveler.add("Kiraz");
  meyveler.add("Muz");
  meyveler.add("Elma");
  print(meyveler);

  // !!!! AYNI DEĞERDEN BİRDEN FAZLA EKLENEMEZ, LİSTEDE BİR TANESİNİ GÖSTERİR !!!!
  meyveler.add("Elma");
  
  //Okuma, Getirme
 print(meyveler.elementAt(2));

 //İndex Boyutu Öğrenme
 print("Boyut : ${meyveler.length}");


}