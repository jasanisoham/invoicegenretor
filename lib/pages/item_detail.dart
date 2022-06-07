import 'package:flutter/material.dart';

import '../models.dart';

class ItemDetail extends StatefulWidget {
  const ItemDetail({Key? key}) : super(key: key);

  @override
  _ItemDetailState createState() => _ItemDetailState();
}

class _ItemDetailState extends State<ItemDetail> {
  final GlobalKey<FormState> _itemDetailFormKey = GlobalKey<FormState>();
  final TextEditingController _itemNameController = TextEditingController();
  final TextEditingController _numOfItemController = TextEditingController();
  final TextEditingController _priceOfItemController = TextEditingController();
  final TextEditingController _disOnItemController= TextEditingController();
  final TextEditingController _invoiceNumController = TextEditingController();
  final TextEditingController _gstsController = TextEditingController();

  String? itemName;
  String? numOfItem;
  String? priceOfItem;
  String? disOnItem;
  String? invoiceNum;
  String? gsts;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Item Detail",
        ),
        centerTitle: true,
      ),
      body: Form(
        key: _itemDetailFormKey,
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  padding:const  EdgeInsets.all(15),
                  child: ListView(
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextFormField(
                            onSaved: (val) {
                              itemName = val;
                            },
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Enter item name first...";
                              }
                              return null;
                            },
                            controller: _itemNameController,
                            decoration: const InputDecoration(
                              label: Text("Item Name"),
                              hintText: "Item Name",
                            ),
                          ),
                          TextFormField(
                            onSaved: (val) {
                              numOfItem = val;
                            },
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Enter number of item first...";
                              }
                              return null;
                            },
                            keyboardType: TextInputType.number,
                            controller: _numOfItemController,
                            decoration: const InputDecoration(
                              label: Text("Number of item"),
                              hintText: "Number of item",
                            ),
                          ),
                          TextFormField(
                            onSaved: (val) {
                              priceOfItem = val;
                            },
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Enter price of item first...";
                              }
                              return null;
                            },
                            controller: _priceOfItemController,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              label: Text("Price of item"),
                              hintText: "Price of item",
                            ),
                          ),
                          TextFormField(
                            onSaved: (val) {
                              invoiceNum = val;
                            },
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Enter invoice number first...";
                              }
                              return null;
                            },
                            keyboardType: TextInputType.number,
                            controller: _invoiceNumController,
                            decoration: const InputDecoration(
                              label: Text("Invoice number"),
                              hintText: "Invoice number",
                            ),
                          ),
                          TextFormField(
                            onSaved: (val) {
                              disOnItem = val;
                            },
                            controller: _disOnItemController,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              label: Text("Discount on item"),
                              hintText: "Discount on item",
                            ),
                          ),
                          TextFormField(
                            onSaved: (val) {
                              gsts = val;
                            },
                            controller: _gstsController,
                            keyboardType: TextInputType.number,

                            decoration: const InputDecoration(
                              label: Text("Gsts"),
                              hintText: "Gsts",
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                        onPressed: () {
                          if(_itemDetailFormKey.currentState!.validate()){
                            _itemDetailFormKey.currentState!.save();

                            invoice.invoiceNum = invoiceNum!;
                            invoice.numOfItem = numOfItem!;
                            invoice.priceOfItem= priceOfItem!;
                            invoice.itemName = itemName!;
                            invoice.disOnItem = disOnItem!;
                            invoice.gsts = gsts!;

                            // Navigator.of(context).pushReplacementNamed("bill_detail");
                            Navigator.of(context).pushNamedAndRemoveUntil("bill_detail", (route) => false);
                          }
                        },
                        child: const Padding(
                          padding:  EdgeInsets.all(20),
                          child: Text(
                            "Submit",
                            style: TextStyle(fontSize: 20),
                          ),
                        )),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
