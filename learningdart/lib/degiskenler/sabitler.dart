void main(){
  /*  SABİTLER

 Java dilinde "final" olarak geçer.
 Swift dilinde "let" olarak geçer.
 Kotlin dilinde "val" olarak geçer.
 Flutter dilinde "final veya const" olarak geçer.

 Sabitlerin kullanım amacı değişkenin değerini kilitlemek ve sonrasında
 değer atamayı engellemektir.
   */


  //Kodlamayı çalıştırdığımızda hafızada oluşur.
  final int numara = 100;
  print(numara);
  //numara = 200;


  //Değişkeni tanımladığımızda hafızada oluşur.
  //Genellikle Buton,Text vb. görsel nesnelerde kullanılır.
  const int sonuc = 500;
  print(sonuc);
  //sonuc = 500;

  
}