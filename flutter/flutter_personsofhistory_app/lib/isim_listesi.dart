import 'package:flutter/material.dart';
import 'package:flutter_personsofhistory_app/data/strings.dart';
import 'package:flutter_personsofhistory_app/model/isimler.dart';
import 'package:flutter_personsofhistory_app/model/isimler_item.dart';

class IsimListesi extends StatelessWidget {
  late List<Isimler> tumIsimler;

  IsimListesi({Key? key}) : super(key: key) {
    tumIsimler = veriKaynagi();
    //debugPrint(tumIsimler.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tarihte İz Bırakanlar'),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: tumIsimler.length,
          itemBuilder: (BuildContext context, int index) {
            return IsimListesiItem(listenenIsim: tumIsimler[index]);
          },
        ),
      ),
    );
  }

  List<Isimler> veriKaynagi() {
    List<Isimler> gecici = [];
    for (int i = 0; i < 15; i++) {
      var kisiAd = Strings.kisiler[i];
      var kisiDogum = Strings.dogumOlumTarihleri[i];
      var kisiDetay = Strings.kisiOzellikleri[i];
      var kisiResim = Strings.resimler[i];
      var kisiKucukResim=Strings.kucukResimler[i];

      Isimler isimGetir = Isimler(kisiAd, kisiDogum, kisiDetay, kisiResim,kisiKucukResim);
      gecici.add(isimGetir);
    }

    return gecici;
  }
}
