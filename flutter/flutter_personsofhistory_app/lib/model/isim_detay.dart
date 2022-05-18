import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

import 'isimler.dart';

class KisiDetay extends StatefulWidget {
  final Isimler secilenDetay;
  const KisiDetay({required this.secilenDetay, Key? key}) : super(key: key);

  @override
  State<KisiDetay> createState() => _KisiDetayState();
}

class _KisiDetayState extends State<KisiDetay> {
  Color appbarRengi = Colors.transparent;
  late PaletteGenerator _generator;

  @override
  void initState() {
    debugPrint('initstate çalıştı');
    appBarRengiBul();
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_)=>appBarRengiBul());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            backgroundColor: appbarRengi,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                widget.secilenDetay.isimler,
                style: const TextStyle(fontSize: 15),
              ),
              background: Image.asset(
                "images/" + widget.secilenDetay.resimler,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.all(10),
              child: SingleChildScrollView(
                child: Text(
                  widget.secilenDetay.kisiBilgileri,
                  style: const TextStyle(fontSize: 20),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void appBarRengiBul() async {
    debugPrint('appbarrengibul çalıştı');
    _generator = await PaletteGenerator.fromImageProvider(
        AssetImage('images/' + widget.secilenDetay.resimler));
        appbarRengi=_generator.dominantColor!.color;
        setState(() {debugPrint('setstate2 çalıştı');
          
        });
  }
}
