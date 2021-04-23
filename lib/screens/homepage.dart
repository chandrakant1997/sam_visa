import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sam_visa/bottomNavigation.dart';
import 'package:sam_visa/screens/loginPage.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  Widget Headers() {
    return Padding(
        padding: const EdgeInsets.only(),
        child: Container(
          height: 100,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/hadder.png"),
              fit: BoxFit.fill,
            ),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.20,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/hadder.png"),
                fit: BoxFit.fitHeight,
              ),
            ),
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                              width: MediaQuery.of(context).size.width * 0.20,
                              height: MediaQuery.of(context).size.height * 0.10,
                              decoration: new BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: new DecorationImage(
                                      fit: BoxFit.fill,
                                      image: new NetworkImage(
                                          "https://i.imgur.com/BoN9kdC.png")))),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60, right: 90),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hi, John",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "SAM points:500",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 75,
                  ),
                  child: Column(
                    children: [
                      GestureDetector(
                        child: Icon(
                          Icons.logout,
                          size: 25,
                          color: Colors.white,
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()),
                          );
                        },
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 150),
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 250,
                  padding: new EdgeInsets.all(10.0),
                  child: Card(
                    child: Image.asset(
                      'images/sam-card.png',
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    //color: Colors.red,
                    elevation: 9,
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 25, left: 30),
                          child: Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.15,
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                                child: Image.asset(
                                  "images/Group 2.png",
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                  0,
                                  0,
                                  15.0,
                                  0,
                                ),
                                child: Text(
                                  "Smart Asset Managers",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 150, left: 35),
                  child: Row(
                    children: [
                      Text(
                        "1234 1222 2222 3334",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 190, left: 35),
                  child: Row(
                    children: [
                      Text(
                        "JOHN DOE",
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 190, left: 190),
                  child: Column(
                    children: [
                      Text(
                        "VALID",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w100),
                      ),
                      Text(
                        "THRU",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 187, left: 220),
                  child: Row(
                    children: [
                      Text(
                        "6/17",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, top: 390.0, bottom: 10),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 40,
              // color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recent Transactions",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w200),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: GestureDetector(
                          child: Text(
                        "View all",
                        style: TextStyle(
                            color: Color(0xff380C2E),
                            fontSize: 15,
                            fontWeight: FontWeight.w200,
                            decoration: TextDecoration.underline),
                      ))),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 440),
            child: Container(
              height: 700,
              // color: Colors.amber,
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin:
                          const EdgeInsets.only(left: 15, right: 15, top: 5),
                      height: 65,
                      width: 330,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 0,
                            blurRadius: 5,
                            offset: Offset(0, 1), // changes position of shadow
                          ),
                        ],
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(10.0),
                        gradient: LinearGradient(
                            colors: [Colors.white70, Colors.white]),
                        border: Border.all(color: Colors.white, width: 1),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Container(
                              width: 50,
                              height: 50,
                              margin: EdgeInsets.only(left: 10),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  //  borderRadius: BorderRadius.all(Radius.circular(20)),
                                  border: Border.all(
                                      width: 1, color: Color(0xff580E33))),
                              child: Center(child: Icon(Icons.add)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 14.0, bottom: 5, right: 50.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Received from Jack',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  '13 Mar, 9:59 PM',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 7, top: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 15, right: 10),
                                  child: Text(
                                    "- 100",
                                    style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 650),
            child: BottomNavigation(),
          )
          /*Padding(
            padding: const EdgeInsets.only(top: 400, left: 20),
            child: Container(
              //color: Colors.blue,
              height: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recent Transactions",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w200),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: GestureDetector(
                          child: Text(
                        "View all",
                        style: TextStyle(
                            color: Color(0xff380C2E),
                            fontSize: 15,
                            fontWeight: FontWeight.w200,
                            decoration: TextDecoration.underline),
                      ))),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 400),
            child: Stack(
              children: [
                Container(
                  //height: 400,
                  child: ListView.builder(
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  left: 15, top: 10, right: 15, bottom: 0),
                              height: 60,
                              width: 320,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 0,
                                    blurRadius: 5,
                                    offset: Offset(
                                        0, 1), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.11,
                                    height: MediaQuery.of(context).size.height *
                                        0.055,
                                    margin: EdgeInsets.only(
                                        left: 10, top: 10, right: 260),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)),
                                        border: Border.all(
                                            width: 1,
                                            color: Color(0xff580E33))),
                                    child: Center(child: Icon(Icons.send)),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Text("Paid to Jack"),
                              ],
                            )
                          ],
                        );
                      }),
                ),
              ],
            ),
          ),*/
        ],
      ),
    );
  }
}
