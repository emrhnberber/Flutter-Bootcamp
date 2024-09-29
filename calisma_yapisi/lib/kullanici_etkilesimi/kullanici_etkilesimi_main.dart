import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class KullaniciEtkilesimiMain extends StatefulWidget{
  const KullaniciEtkilesimiMain({super.key});

  @override
  State<KullaniciEtkilesimiMain> createState() => _KullaniciEtkilesimiMainState();
}

class _KullaniciEtkilesimiMainState extends State<KullaniciEtkilesimiMain> {
  var tfControl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Kullanıcı Etkileşimi"),),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: const Text("Silmek istiyor musunuz?"),
                  action: SnackBarAction(label: "Evet", onPressed: (){
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: const Text("Silme işlemi başarılı.")));
                  }),
                  )
              );
            }, child: const Text("Snackbar")),

            ElevatedButton(onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: const Text("Silmek istiyor musunuz?", style: TextStyle(color: Colors.red),),
                    action: SnackBarAction(label: "Evet", textColor: Colors.green, onPressed: (){
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: const Text("Silme işlemi başarılı.")));
                    }),
                  )
              );
            }, child: const Text("Snackbar (Özel)")),

            ElevatedButton(onPressed: (){
              showDialog(
                  context: context,
                  builder: (BuildContext context){
                    return AlertDialog(
                      title: const Text("Başlık"),
                      content: const Text("İçerik"),
                      actions: [
                        TextButton(onPressed: (){

                        },
                            child: const Text("İptal")),
                        TextButton(onPressed: (){
                          Navigator.pop(context);
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: const Text("Başarılı.")));
                        }, child: const Text("Tamam")),
                      ],
                    );
                  }
              );
            }, child: const Text("Alert")),

            ElevatedButton(onPressed: (){
              showDialog(
                  context: context,
                  builder: (BuildContext context){
                    return AlertDialog(
                      title: const Text("Kayıt İşlemi"),
                      content: TextField(controller: tfControl, decoration: InputDecoration(hintText: "Veri"),),
                      backgroundColor: Colors.grey,
                      actions: [
                        TextButton(onPressed: (){
                          Navigator.pop(context);
                        },
                            child: const Text("İptal", style: TextStyle(color: Colors.black),)),
                        TextButton(onPressed: (){
                          Navigator.pop(context);
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("Alınan Veri: ${tfControl.text}.")));
                        }, child: const Text("Kaydet", style: TextStyle(color: Colors.black),)),
                      ],
                    );
                  }
              );
            }, child: const Text("Alert(Özel)")),
          ],
        ),
      ),
    );
  }
}
