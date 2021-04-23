import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/material.dart';
import 'package:sam_visa/screens/homepage.dart';

import 'payment_page.dart';

class ScanPage extends StatefulWidget {
  @override
  _ScanPageState createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {
  String qrCodeResult = "Not Yet Scanned";
  //var res = MyWidget();
  @override
  Widget build(BuildContext context) {
    //  DateTime now = DateTime.now();
    return Scaffold(
      backgroundColor: Color(0xff787878),
      body: Container(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 30),
                  child: Row(
                    children: [
                      GestureDetector(
                        child: Icon(
                          Icons.clear,
                          color: Color(0xffFFFFFF),
                          size: 25,
                        ),
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      Dashboard()));
                        },
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        "Scan any QR code",
                        style:
                            TextStyle(color: Color(0xffFFFFFF), fontSize: 24),
                      )
                    ],
                  ),
                )
              ],
            ),

            /*  Text(
              "Result",
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Text(
              qrCodeResult,
              style: TextStyle(
                fontSize: 20.0,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              "Date and Time",
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),*/
            //  if (qrCodeResult != "Not Yet Scanned") Center(child: MyWidget()),
            /*  SizedBox(
              height: 20.0,
            ),*/
            SizedBox(
              height: 100,
            ),
            Container(
              margin: EdgeInsets.only(left: 90),
              width: 180,
              height: 180,
              child: FlatButton(
                onPressed: () async {
                  String codeSanner = await BarcodeScanner.scan();
                  //barcode scnner

                  setState(() {
                    qrCodeResult = codeSanner;
                  });

                  /*try {
                    BarcodeScanner
                        .scan(); //this method is used to scan the QR code
                  } catch (e) {
                    BarcodeScanner
                        .CameraAccessDenied; // we can print that user has denied for the permisions
                    BarcodeScanner
                        .UserCanceled; // we can print on the page that user has cancelled
                  }*/
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => PaymentScreen()));
                },
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Color(0xff39C3F6), width: 6.0),
                ),
              ),
            ),
            SizedBox(
              height: 189.5,
            ),
            Column(
              children: [
                Container(
                  // color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.25,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20)),
                  ),
                  // child: ,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

//its quite simple as that you can use try and catch staatements too for platform exception
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    return Text(
      ' Date ${now.day}:${now.month}:${now.year}'
      '\t'
      'time ${now.hour}:${now.minute}:${now.second}',
      style: TextStyle(color: Colors.red),
    );
  }
}
