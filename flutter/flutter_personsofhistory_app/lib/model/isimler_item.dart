//listtile'daki veriler:

import 'package:flutter/material.dart';
import 'package:flutter_personsofhistory_app/model/isim_detay.dart';
import 'package:flutter_personsofhistory_app/model/isimler.dart';

class IsimListesiItem extends StatelessWidget {
  final Isimler listenenIsim;

  const IsimListesiItem({required this.listenenIsim, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15))),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: ListTile(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => KisiDetay(secilenDetay: listenenIsim),
              ),
            );
          },
          leading: Image.asset(
            "images/" + listenenIsim.kucukResimler,
            width: 50,
          ),
          title: Text(listenenIsim.isimler),
          subtitle: Text(listenenIsim.dogumTarihleri),
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
      ),
    );
  }
}
