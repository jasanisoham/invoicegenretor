import 'package:flutter/material.dart';
import 'package:stickereditor/stickereditor.dart';

class CompanyLogo extends StatefulWidget {
  const CompanyLogo({Key? key}) : super(key: key);

  @override
  _CompanyLogoState createState() => _CompanyLogoState();
}

class _CompanyLogoState extends State<CompanyLogo> {
  List <String> myFonts = <String> [
    "assets/fonts/jaime.ttf",
    "assets/fonts/altona.ttf",
    "assets/fonts/cabinet.ttf",
    "assets/fonts/dark.otf",
  ];
  List <Color> myColor = <Color> [
    Colors.redAccent,
    Colors.blue,
    Colors.green,
    Colors.black,
    Colors.grey,
    Colors.purpleAccent,
    Colors.amber,
    Colors.teal,
    Colors.indigo,
  ];
  List <String> myAssets = <String> [
    "assets/imeges/company.png",
    "assets/imeges/dairy.png",
    "assets/imeges/electronic.png",
    "assets/imeges/hospital.png",
    "assets/imeges/kirana.png",
    "assets/imeges/supermarket.png",
    "assets/imeges/online.jpg",
    "assets/imeges/phoneshop.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Company Logo"),centerTitle: true,
        actions: [
          IconButton(onPressed: (){
            Navigator.of(context).pushReplacementNamed(("bill_detail"));
          }, icon:const Icon(Icons.check),),
        ],),
        body: Container(
          alignment: Alignment.center,
          child:  StickerEditingView(
            isnetwork: false,
            height: 300,
            width: 300,
            imgUrl: "assets/imeges/whiteback.jpg",
            fonts: myFonts,
            palletColor: myColor,
            assetList: myAssets,
          ),
        ),
      ),
    );
  }
}

