import 'package:flutter/material.dart';
import 'package:invoicegenretor/pages/add_new_bill.dart';
import 'package:invoicegenretor/pages/bill_details.dart';
import 'package:invoicegenretor/pages/company_logo.dart';
import 'package:invoicegenretor/pages/customer_detail.dart';
import 'package:invoicegenretor/pages/final_bill_page.dart';
import 'package:invoicegenretor/pages/home_page.dart';
import 'package:invoicegenretor/pages/item_detail.dart';
import 'package:invoicegenretor/pages/spalsh_screen.dart';
import 'package:invoicegenretor/pages/your_conpany_detail.dart';


void main(){
  runApp(
   const  InvoiceGenerator(),
  );
}

class InvoiceGenerator extends StatefulWidget {
  const InvoiceGenerator({Key? key}) : super(key: key);

  @override
  _InvoiceGeneratorState createState() => _InvoiceGeneratorState();
}

class _InvoiceGeneratorState extends State<InvoiceGenerator> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "splash_screen",
      routes: {
        '/' : (context) => const HomePage(),
        'your_company_detail' : (context) => const OwrCompanyDetail(),
        'splash_screen' : (context) => const SpalshScreen(),
        'add_new_bill' : (context) => const AddNewBill(),
        'bill_detail' : (context) => const BillDetail(),
        'customer_detail' : (context) => const CustomerDetail(),
        'item_detail' : (context) => const ItemDetail(),
        'company_logo' : (context) => const CompanyLogo(),
        'final_bill_page' : (context) => const FinalBillPage(),
        // '/' : (context) => const CompanyLogo(),
      },
    );
  }
}
