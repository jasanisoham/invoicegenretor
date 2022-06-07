import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BillDetail extends StatefulWidget {
  const BillDetail({Key? key}) : super(key: key);

  @override
  _BillDetailState createState() => _BillDetailState();
}

class _BillDetailState extends State<BillDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bill Detail"),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(15),
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed("customer_detail");
              },
              borderRadius: BorderRadius.circular(12),
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Customer Detail",
                      style: TextStyle(fontSize: 22),
                    ),
                    Icon(Icons.arrow_forward_ios_outlined),
                  ],
                ),
                height: MediaQuery.of(context).size.height * 0.14,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Colors.blue,
                    width: 3,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed("item_detail");
              },
              borderRadius: BorderRadius.circular(12),
              child: Container(
                padding: const EdgeInsets.all(20),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Item Detail",
                      style: TextStyle(fontSize: 22),
                    ),
                    Icon(Icons.arrow_forward_ios_outlined),
                  ],
                ),
                height: MediaQuery.of(context).size.height * 0.14,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Colors.blue,
                    width: 3,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
        InkWell(
          onTap:(){
            Navigator.of(context).pushNamed("company_logo");
          },
          borderRadius: BorderRadius.circular(12),
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Company Logo",
                    style: TextStyle(fontSize: 22),
                  ),
                  Icon(Icons.arrow_forward_ios_outlined),
                ],
              ),
              height: MediaQuery.of(context).size.height * 0.14,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Colors.blue,
                  width: 3,
                ),
              ),
            ),
        ),
            const SizedBox(
              height: 160,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("final_bill_page");
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 110, vertical: 18),
                  child: Text(
                    "View Bill",
                    style: TextStyle(fontSize: 20),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
