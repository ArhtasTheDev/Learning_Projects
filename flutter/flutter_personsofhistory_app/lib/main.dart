import 'package:flutter/material.dart';
import 'package:flutter_personsofhistory_app/core/theme/app_colors.dart';

import 'isim_listesi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
         appBarTheme: AppBarTheme(color:Colors.blueGrey[900], ),  cardColor: AppColors.secondary),
      home: IsimListesi(),
    );
  }
}
