import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Invoice Generator"),centerTitle: true,),
      body: Column(
        children: [
          SizedBox(height:90,),
          Container(
            alignment: Alignment.center,
            child: Transform.scale(
                scale: 1,
                child: Image(image: AssetImage("assets/imeges/background2.png"),)),
          ),
   Spacer(flex: 3,),

    ElevatedButton(onPressed: (){
      Navigator.of(context).pushNamed("your_company_detail");
    }, child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: const Text("Enter your company detail",style: TextStyle(fontSize: 20),),
    )),
          Spacer(),

        ],
      ),

    );
  }
}
