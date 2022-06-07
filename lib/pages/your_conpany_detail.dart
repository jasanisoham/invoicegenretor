import 'package:flutter/material.dart';
import 'package:invoicegenretor/models.dart';

class OwrCompanyDetail extends StatefulWidget {
  const OwrCompanyDetail({Key? key}) : super(key: key);

  @override
  _OwrCompanyDetailState createState() => _OwrCompanyDetailState();
}

class _OwrCompanyDetailState extends State<OwrCompanyDetail> {
  final GlobalKey<FormState> _ourCompanyDetail = GlobalKey<FormState>();
  final TextEditingController _ourComName = TextEditingController();
  final TextEditingController _ourPhone = TextEditingController();
  final TextEditingController _ourEmail = TextEditingController();
  final TextEditingController _ourGstNum = TextEditingController();
  final TextEditingController _ourAdd = TextEditingController();

  String? ourComName;
  String? ourPhone;
  String? ourEmail;
  String? ourGstNum;
  String? ourAdd;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Your Company Detail",
        ),
        centerTitle: true,
      ),
      body: Form(
        key: _ourCompanyDetail,
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextFormField(
                        onSaved: (val) {
                          ourComName = val;
                        },
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Enter your Company name first...";
                          }
                          return null;
                        },
                        controller: _ourComName,
                        decoration: const InputDecoration(
                          label: Text("Company Name"),
                          hintText: "Company Name",
                        ),
                      ),
                      TextFormField(
                        onSaved: (val) {
                          ourPhone = val;
                        },
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Enter your Phone number first...";
                          }
                          else if (val.length != 10) {
                            return "Invalid length of your phone number...";
                          }
                          return null;
                        },
                        keyboardType: TextInputType.number,
                        controller: _ourPhone,
                        decoration: const InputDecoration(
                          label: Text("Phone Number"),
                          hintText: "Phone number",
                        ),
                      ),
                      TextFormField(
                        onSaved: (val) {
                          ourEmail = val;
                        },
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Enter your email first...";
                          }
                          return null;
                        },
                        controller: _ourEmail,
                        decoration: const InputDecoration(
                          label: Text("Email Address"),
                          hintText: "Email Address",
                        ),
                      ),
                      TextFormField(
                        onSaved: (val) {
                          ourAdd = val;
                        },
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Enter your company address first...";
                          }
                          return null;
                        },
                        controller: _ourAdd,
                        decoration: const InputDecoration(
                          label: Text("Company Address"),
                          hintText: "Company Address",
                        ),
                      ),
                      TextFormField(
                        onSaved: (val) {
                          ourGstNum = val;
                        },
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Enter your Gst number first...";
                          }
                          return null;
                        },
                        controller: _ourGstNum,
                        decoration: const InputDecoration(
                          label: Text("Gst Number"),
                          hintText: "Gst number",
                        ),
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
                          if(_ourCompanyDetail.currentState!.validate()){
                            _ourCompanyDetail.currentState!.save();

                            invoice.ourAdd = ourAdd!;
                            invoice.ourPhone = ourPhone!;
                            invoice.ourEmail= ourEmail!;
                            invoice.ourComName = ourComName!;
                            invoice.ourGstNum = ourGstNum!;

                            Navigator.of(context).pushNamed("add_new_bill");

                          }
                        },
                        child: const Padding(
                          padding:  EdgeInsets.all(20),
                          child: Text(
                            "Get Started",
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
