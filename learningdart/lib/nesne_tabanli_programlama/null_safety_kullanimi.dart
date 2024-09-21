void main(){
  String? mesaj = null;  //VEYA late String mesaj;

  //mesaj = "merhaba"

  //Yöntem 1
  print("Yöntem 1: ${mesaj?.toUpperCase()}"); //Değişkenin yanına ? ekledik. Bu null olma ihtimali olan durumlara kullanılıyor.

  //Yöntem 2
  print("Yöntem 2: ${mesaj!.toUpperCase()}"); //Değişkenin yanına ! ekledik. Bu null OLMAMA ihtimali KESİN durumlara kullanılıyor.

  //Yöntem 3 (İF İLE DE KONTROL EDEBİLİYORUZ.)
  if(mesaj !=null){
    print("Mesaj null.");
  }else[
    print("Yöntem 3: ${mesaj.toUpperCase()}");
  ]

}