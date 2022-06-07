import 'package:flutter/material.dart';

import '../models.dart';

class CustomerDetail extends StatefulWidget {
  const CustomerDetail({Key? key}) : super(key: key);

  @override
  _CustomerDetailState createState() => _CustomerDetailState();
}

class _CustomerDetailState extends State<CustomerDetail> {
  final GlobalKey<FormState> _customerDetailFormKey = GlobalKey<FormState>();
  final TextEditingController _customerName = TextEditingController();
  final TextEditingController _customerPhone = TextEditingController();
  final TextEditingController _customerEmail = TextEditingController();
  final TextEditingController _customerGstNum= TextEditingController();
  final TextEditingController _customerAdd = TextEditingController();

  String? customerName;
  String? customerPhone;
  String? customerEmail;
  String? customerGstNum;
  String? customerAdd;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Customer Detail",
        ),
        centerTitle: true,
      ),
      body: Form(
        key: _customerDetailFormKey,
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
                              customerName = val;
                            },
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Enter customer name first...";
                              }
                              return null;
                            },
                            controller: _customerName,
                            decoration: const InputDecoration(
                              label: Text("Customer Name"),
                              hintText: "Customer Name",
                            ),
                          ),
                          TextFormField(
                            onSaved: (val) {
                              customerPhone = val;
                            },
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Enter customer Phone number first...";
                              }
                              else if (val.length != 10) {
                                return "Invalid length of customer phone number...";
                              }
                              return null;
                            },
                            keyboardType: TextInputType.number,
                            controller: _customerPhone,
                            decoration: const InputDecoration(
                              label: Text("Customer Phone Number"),
                              hintText: "Customer Phone number",
                            ),
                          ),
                          TextFormField(
                            onSaved: (val) {
                              customerEmail = val;
                            },
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Enter customer email first...";
                              }
                              return null;
                            },
                            controller: _customerEmail,
                            decoration: const InputDecoration(
                              label: Text("Customer Email Address"),
                              hintText: "Customer Email Address",
                            ),
                          ),
                          TextFormField(
                            onSaved: (val) {
                              customerAdd = val;
                            },
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Enter customer address first...";
                              }
                              return null;
                            },
                            controller: _customerAdd,
                            decoration: const InputDecoration(
                              label: Text("Customer Address"),
                              hintText: "Customer Address",
                            ),
                          ),
                          TextFormField(
                            onSaved: (val) {
                              customerGstNum = val;
                            },
                            controller: _customerGstNum,
                            decoration: const InputDecoration(
                              label: Text("Gst Number"),
                              hintText: "Gst number",
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
                          if(_customerDetailFormKey.currentState!.validate()){
                            _customerDetailFormKey.currentState!.save();

                            invoice.customerAdd = customerAdd!;
                            invoice.customerPhone = customerPhone!;
                            invoice.customerEmail= customerEmail!;
                            invoice.customerName = customerName!;
                            invoice.customerGstNum = customerGstNum!;

                            Navigator.of(context).pushReplacementNamed("bill_detail");

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
