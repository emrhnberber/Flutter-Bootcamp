void main(){
  /* SAYISALDAN SAYISALA DÖNÜŞTÜRME;

    !! Double değerini intager'a dönüştürürken noktalı ifadeyi tamamen siler YUVARLAMAZ!
    !! İntager değerini Double türüne dönüştürürken sonuna ".0" ekler.

   */
  int x = 56;
  double y = 78.67;

  int sonuc1 = y.toInt();
  double sonuc2 = x.toDouble();

  print(sonuc1);
  print(sonuc2);

  /* SAYISALDAN METİNSELE DÖNÜŞTÜRME; */

  String sonuc3 = x.toString(); //"56"
  String sonuc4 = y.toString(); //"78.67"
  print(sonuc3);
  print(sonuc4);

  /* METİNSELDEN SAYISALA DÖNÜŞTÜRME;

  !! Bu dönüşümde ".parse" metodu kullanılır.

  */
  String yazi1 = "25";
  String yazi2 = "51.45";

  int sonuc5 = int.parse(yazi1);//25
  double sonuc6 = double.parse(yazi2);//51.45

  print(sonuc5);
  print(sonuc6);
}