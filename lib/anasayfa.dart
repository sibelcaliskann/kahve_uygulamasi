import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kahve_uygulamasi/renkler.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {

    var d=AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("COFFYLAB",style: TextStyle(color: yaziRenk1,fontFamily: "Sixtyfour",fontSize: 40),),
        backgroundColor: anaRenk,
        centerTitle: true,
      ),
    body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top:8),
          child: Image.asset("resimler/kahvee.png"),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text("Latte",style: TextStyle(fontSize: 36,color: anaRenk,fontWeight: FontWeight.bold),),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(d!.kahveAciklamasi,style: TextStyle(fontSize: 24,color: yaziRenk2,fontWeight: FontWeight.normal),),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("500 kJ - 320 ml",style: TextStyle(fontSize: 24,color: yaziRenk2,fontWeight: FontWeight.normal),),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Chip(icerik: d.boyut1),
              Chip(icerik: d.boyut2),
              Chip(icerik: d.boyut3),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children:[
              Text(d.fiyat,style: TextStyle(color: anaRenk,fontSize: 40,fontWeight: FontWeight.bold),),
              const Spacer(),
              SizedBox(
                child: TextButton(onPressed: (){},
                 child: Text(d.sepet,style: TextStyle(color: yaziRenk1,fontSize: 30),),
                style: TextButton.styleFrom(
                  backgroundColor: anaRenk,
                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
                ),
              ),
            ],


          ),
        ),

      ],
    ),
    );
  }
}
//stless nesne butonlarin
class Chip extends StatelessWidget {
  String icerik;
  Chip({required this.icerik});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){},
      child: Text(icerik, style: TextStyle(color: yaziRenk1,fontSize: 20),),
      style: TextButton.styleFrom(backgroundColor: anaRenk),
    );
  }
}

