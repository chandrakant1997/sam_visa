import 'package:flutter/material.dart';

String qrCodeResult;

class Payment extends StatefulWidget {
  Payment(mobiles) {
    qrCodeResult = mobiles;
    print(qrCodeResult);
  }
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Column(
            children: [
              Text(
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
              ),
              //  if (qrCodeResult != "Not Yet Scanned") Center(child: MyWidget()),
              /*  SizedBox(
              height: 20.0,
            ),*/
            ],
          )
        ],
      ),
    );
  }
}
