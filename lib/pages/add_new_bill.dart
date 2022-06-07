import 'package:flutter/material.dart';

class AddNewBill extends StatefulWidget {
  const AddNewBill({Key? key}) : super(key: key);

  @override
  _AddNewBillState createState() => _AddNewBillState();
}

class _AddNewBillState extends State<AddNewBill> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Invoice Generator"),centerTitle: true,),
      body: Column(
        children: [

          Expanded(
            flex: 11,
            child: Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  const Spacer(flex: 2,),
                  Image.asset(
                    "assets/imeges/bill.png",
                    height: 110,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "No bill history + Create new bill.",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 22,
                        fontWeight: FontWeight.w500),
                  ),
                  const Spacer(
                    flex: 4,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).pushNamed("bill_detail");
        },
      ),
    );
  }
}
