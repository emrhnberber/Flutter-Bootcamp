class Araba{
  String renk;
  int hiz;
  bool calisiyorMu;

  Araba({required this.renk, required this.hiz, required this.calisiyorMu});

  void bilgiAl(){
    print("---------------------");
    print("Renk: ${renk}");
    print("Max Hız: ${hiz}");
    print("Çalışır durumda mı? ${calisiyorMu}");
  }

  void hizlan(int kacKM){
    hiz = hiz + kacKM;
  }

}