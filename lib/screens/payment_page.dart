import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  Widget Headers() {
    return Container(
      height: 130,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/hadder.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 60, left: 25),
        child: Text(
          "Pay",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
        ),
      ),
    );
  }

  Widget PaymentButon() {
    return Container(
      child: Stack(
        children: [
          GestureDetector(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.80,
              height: MediaQuery.of(context).size.height * 0.070,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                gradient: LinearGradient(
                  end: Alignment.bottomLeft,
                  begin: Alignment.topRight,
                  colors: [
                    Color(0xffAFA5C7),
                    Color(0xffD29DD4),
                    Color(0xffD29DD4),
                  ],
                ),
              ),
              child: Center(
                child: Text(
                  "SLIDE TO CONFIRM",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            onTap: () {
              /* if (_formKey.currentState.validate()) {
            _formKey.currentState.save();
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Dashboard()),
            );
*/ /*
                  setState(() {
                    _isLoading = true;
                  });*/ /*

            */ /*  loginAPI(_controllerUserId.text, _controllerPassword.text);*/ /*
          }*/
            },
          ),
          Column(
            children: [
              Container(
                width: 50,
                height: 50,
                margin: EdgeInsets.only(left: 1),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xff780E8A),
                    //  borderRadius: BorderRadius.all(Radius.circular(20)),
                    border: Border.all(width: 1, color: Color(0xff580E33))),
                child: Center(
                    child: Icon(
                  Icons.access_time,
                  color: Colors.white,
                )),
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Column(
            children: [
              Column(
                children: [Headers()],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 40),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40, top: 30),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                'Paying to',
                                style: TextStyle(
                                    color: Color(0xff333333), fontSize: 15),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Richardo Alvaro',
                                style: TextStyle(
                                    color: Color(0xff333333), fontSize: 25),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 80, top: 30),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                'SAMPOINTS',
                                style: TextStyle(
                                    color: Color(0xff333333), fontSize: 15),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: Container(
                                    width: 40,
                                    padding: EdgeInsets.only(),
                                    child: TextField(
                                      // controller: number,
                                      autocorrect: true,
                                      keyboardType: TextInputType.number,
                                      decoration:
                                          InputDecoration(hintText: '0'),
                                    )),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Column(
                      children: [PaymentButon()],
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
