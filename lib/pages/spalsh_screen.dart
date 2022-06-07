import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SpalshScreen extends StatefulWidget {
  const SpalshScreen({Key? key}) : super(key: key);

  @override
  _SpalshScreenState createState() => _SpalshScreenState();
}

class _SpalshScreenState extends State<SpalshScreen> {

  @override
  void initState(){
    super.initState();
    Timer(const Duration(seconds: 3),(){
      Navigator.of(context).pushReplacementNamed("/");
    });
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      // backgroundColor: Colors.blue,
      body: Stack(
        children: [
           Transform.scale(
               scale: 4,
               child: Container(
                 alignment: Alignment.center,
                 child: Image(image: AssetImage("assets/imeges/invoicesplash.png"),

                 ),
               )),
          Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Spacer(flex: 7,),
                CircularProgressIndicator(),
                Spacer(flex: 1,),

                Text("Invoice generator",style: TextStyle(fontSize: 30,color: Colors.white),),
                Spacer(flex: 1,),
              ],
            ),
          ),
        ],
      ),
    );

  }
}
