import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  var tfController = TextEditingController();
  String alinanVeri = "";
  String resimAdi = "mutlu.png";
  bool swtichKontrol = false;
  bool checkboxKontrol = false;
  int radioDeger = 0;
  double ilerleme = 0;
  var tfSaat = TextEditingController();
  var tfTarih = TextEditingController();
  var ulkelerListesi = <String>[];
  String secilenUlke = "Türkiye";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ulkelerListesi.add("Türkiye");
    ulkelerListesi.add("Japonya");
    ulkelerListesi.add("İtalya");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widgets"),),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Text(alinanVeri),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(controller: tfController,
                  decoration:  InputDecoration(hintText: "Veri"),
                  keyboardType: TextInputType.number, //Klavye türünü belirlemek için kullanılır.
                  obscureText: true, //Texti gizlemek için kullanılır
                ),
              ),
              ElevatedButton(onPressed: (){
                setState(() {
                  alinanVeri = tfController.text;
                });
              },
                  child: Text("Veriyi Al")),
        
              //URL İLE RESİM GETİRMEK
              SizedBox( width: 120, height: 120,
                  child: Image.network("https://images.vexels.com/media/users/3/185202/isolated/preview/04210f166dee214fc751791106b453b2-donut-pink-syrup-icon.png")),
        
        
              Row( mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: (){
                    setState(() {
                      resimAdi = "mutlu.png";
                    });
                  },
                      child: Text("Resim 1")),
                  Image.asset("resimler/$resimAdi"),
                  ElevatedButton(onPressed: (){
                    setState(() {
                      resimAdi = "onay.png";
                    });
                  },
                      child: Text("Resim 2")),
                ],
              ),
        
              Row( mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox( width: 200,
                    child: SwitchListTile(
                        value: swtichKontrol,
                        title: Text("Dart"),
                        controlAffinity: ListTileControlAffinity.leading, //Switch iconunun neeree olmasını istiyorsak onu seçiyoruz
                        onChanged: (veri){
                      setState(() {
                        swtichKontrol = veri;
                      });
                        }
                    ),
                  ),
        
                  SizedBox( width: 200,
                    child: CheckboxListTile(
                        value: checkboxKontrol,
                        title: Text("Flutter"),
                        controlAffinity: ListTileControlAffinity.leading, //Switch iconunun neeree olmasını istiyorsak onu seçiyoruz
                        onChanged: (veri){
                          setState(() {
                            checkboxKontrol = veri!;
                          });
                        }
                    ),
                  ),
                ],
              ),
        
              Row( mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox( width: 200,
                    child: RadioListTile(
                        value: 1,
                        title: Text("Beşiktaş"),
                        groupValue: radioDeger,
                        controlAffinity: ListTileControlAffinity.leading, //Switch iconunun neeree olmasını istiyorsak onu seçiyoruz
                        onChanged: (veri){
                          setState(() {
                            radioDeger = veri!;
                          });
                        }
                    ),
                  ),
        
                  SizedBox( width: 200,
                    child: RadioListTile(
                        value: 2,
                        title: Text("Beşiktaş"),
                        groupValue: radioDeger,
                        controlAffinity: ListTileControlAffinity.leading, //Switch iconunun neeree olmasını istiyorsak onu seçiyoruz
                        onChanged: (veri){
                          setState(() {
                            radioDeger = veri!;
                          });
                        }
                    ),
                  ),
                ],
              ),
        
              Column( mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Slider'ın değeri: ${ilerleme.toString()}"),
                  Slider(max: 100, min: 0, value: ilerleme, onChanged: (veri){
                    setState(() {
                      ilerleme = veri;
                    });
                  })
                ],
              ),
        
        
              Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(width: 120,
                    child: TextField(controller: tfSaat,
                      decoration:  InputDecoration(hintText: "Saat"),
                      keyboardType: TextInputType.text, //Klavye türünü belirlemek için kullır
                    ),
                  ),
                  IconButton(onPressed: (){
                    showTimePicker(context: context, initialTime: TimeOfDay.fromDateTime(DateTime.now()))
                    .then((value) {
                      tfSaat.text = "${value!.hour} : ${value!.minute}";
                    });
                  }, icon: Icon(Icons.access_time)),
        
                  SizedBox(width: 120,
                    child: TextField(controller: tfTarih,
                      decoration:  InputDecoration(hintText: "Tarih"),
                      keyboardType: TextInputType.number, //Klavye türünü belirlemek için kullanılır.
                    ),
                  ),
                  IconButton(onPressed: (){
                    showDatePicker(context: context,
                        initialDate: DateTime.now(),
                        firstDate: (DateTime(2000)),
                        lastDate: (DateTime(2030)))
                        .then((value) {
                      tfTarih.text = "${value!.day} / ${value!.month} / ${value!.year}";
                    });
                  }, icon: Icon(Icons.date_range)),
                ],
              ),
              DropdownButton(
                  value: secilenUlke,
                  items: ulkelerListesi.map((ulke) {
                    return DropdownMenuItem(value: ulke,child: Text(ulke),);
                  }).toList(),
                  icon: Icon(Icons.arrow_drop_down),
                  onChanged: (veri){
                    setState(() {
                      secilenUlke = veri!;
                    });
                  }
              ),
              GestureDetector(
                onTap: (){
                  print("Container'a tek tıklandı.");
                },
                  onDoubleTap: (){
                  print("Container'a çift tıklandı.");
                  },
                  onLongPress: (){
                  print("Container'a uzun basıldı.");
                  },
                  child: Container(width: 200, height: 400, color: Colors.red,))
            ],
          ),
        ),
      ),
    );
  }
}
