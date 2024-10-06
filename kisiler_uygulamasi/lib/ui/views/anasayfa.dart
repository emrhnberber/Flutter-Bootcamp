import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kisiler_uygulamasi/data/entity/kisiler.dart';
import 'package:kisiler_uygulamasi/ui/views/detay_sayfa.dart';
import 'package:kisiler_uygulamasi/ui/views/kayit_sayfa.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {

  bool aramaYapiliyorMu = false;

  Future<void> ara(String aramaKelimesi) async{
    print("Aranılan Kelime: $aramaKelimesi");
  }

  Future<List<Kisiler>> kisileriYukle() async{
    var kisilerListesi = <Kisiler>[];
    var k1 = Kisiler(kisi_id: 1, kisi_ad: "Ahmet", kisi_tel: "111111");
    var k2 = Kisiler(kisi_id: 2, kisi_ad: "Zeyno", kisi_tel: "111111");
    kisilerListesi.add(k1);
    kisilerListesi.add(k2);
    return kisilerListesi;
  }

  Future<void> sil(int kisi_id) async{
    print("Kişiyi sil: $kisi_id");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: aramaYapiliyorMu ?
        TextField(
          decoration: const InputDecoration(hintText: "Ara"),
          onChanged: (aramaSonucu){
            ara(aramaSonucu);
          },
        ):
        Text("Kişiler"),
        actions: [
          aramaYapiliyorMu ?
          IconButton(onPressed: (){
            setState(() {
              aramaYapiliyorMu = false;
            });
          }, icon: Icon(CupertinoIcons.clear)) :
          IconButton(onPressed: (){
            setState(() {
              aramaYapiliyorMu = true;
            });
          }, icon: Icon(Icons.search))
        ],
      ),
      body: FutureBuilder<List<Kisiler>>(
        future: kisileriYukle(),
        builder: (context, snapshot){
          if(snapshot.hasData){
            var kisilerListesi = snapshot.data;
            return ListView.builder(
              itemCount: kisilerListesi!.length,
              itemBuilder: (context,indeks){
                var kisi = kisilerListesi[indeks];
                return GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DetaySayfa(kisi: kisi)))
                        .then((Value) {
                      print("Detay Sayfaya gidildi.");
                    });
                  },
                  child: Card(
                    child: SizedBox( height: 100,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(kisi.kisi_ad, style: TextStyle(fontSize: 20),),
                                Text(kisi.kisi_tel, style: TextStyle(fontSize: 12),),
                              ],
                            ),
                          ),
                          Spacer(),
                          IconButton(onPressed: (){
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text("${kisi.kisi_ad} silinsin mi?"),
                                action: SnackBarAction(
                                    label: "Evet",
                                    onPressed: (){
                                      sil(kisi.kisi_id);
                                    }
                                ),
                                )
                            );
                          }, icon: Icon(Icons.clear, color: Colors.black54,)),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          }else{
            return const Center();
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => KayitSayfa()))
                .then((Value) {
              print("Anasayfaya Dönüldü.");
            });
          },
          child: const Icon(Icons.add),
      ),
    );
  }
}
