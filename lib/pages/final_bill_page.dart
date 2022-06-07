import 'package:flutter/material.dart';
import 'package:invoicegenretor/models.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class FinalBillPage extends StatefulWidget {
  const FinalBillPage({Key? key}) : super(key: key);

  @override
  _FinalBillPageState createState() => _FinalBillPageState();
}

class _FinalBillPageState extends State<FinalBillPage> {
  final pdf = pw.Document();

  @override
  Widget build(BuildContext context) {
    // pdf.addPage(pw.Page(
    //     pageFormat: PdfPageFormat.a4,
    //     build: (pw.Context context) {
    //       return pw.Center(
    //         child: pw.Text("Hello World"),
    //       ); // Center
    //     }));
    pdf.addPage(pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (pw.Context context) {
          return pw.Center(
            child: pw.Column(children: [
              pw.Text("Hello World"),
              pw.Text(invoice.ourPhone),
              pw.Text(invoice.ourEmail),
              pw.Text(invoice.ourComName),
              pw.Text(invoice.ourGstNum),
              pw.Text(invoice.ourAdd),
            ]),
          ); // Center
        }));
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () async {
              final output = await getExternalStorageDirectory();
              // final output = await getTemporaryDirectory();

              print("path : " + output!.path);
              final file = File("${output.path}/resume.pdf");
              await file.writeAsBytes(await pdf.save());
            },
            icon: const Icon(Icons.download),
          ),
        ],
      ),
      body: Container(
        // alignment: Alignment.center,
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topRight,
              child: const Text(
                "INVOICE",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 90,
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.topLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Transform.scale(
                    scale: 0.6,
                    child: const Image(
                      image: AssetImage("assets/imeges/dairy.png"),
                    ),
                  ),
                  Text(
                    invoice.ourComName,
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20,),
                      Text(
                        invoice.ourComName,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w800
                        ),
                      ),
                      Row(
                        children: [
                          // const  Icon(Icons.location_on),
                          Text(
                            invoice.ourAdd,
                            style: const TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          // const  Icon(Icons.phone),
                          Text(
                            invoice.ourPhone,
                            style: const TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          // const  Icon(Icons.email),
                          Text(
                            invoice.ourEmail,
                            style: const TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            invoice.ourGstNum,
                            style: const TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(thickness: 1,color: Colors.grey,),
            Row(
              children: [
                Column(
                  children: [
                   const Text("BILL TO",style: TextStyle(color: Colors.grey,fontSize: 14),),
                    Text(invoice.customerName,style: const TextStyle(fontSize: 12),),
                    Text(invoice.customerAdd,style: const TextStyle(fontSize: 12),),
                    Text(invoice.customerPhone,style: const TextStyle(fontSize: 12),),
                    Text(invoice.customerEmail,style: const TextStyle(fontSize: 12),),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
