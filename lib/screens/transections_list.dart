import 'package:flutter/material.dart';

class Transection extends StatefulWidget {
  @override
  _TransectionState createState() => _TransectionState();
}

class _TransectionState extends State<Transection> {
  Widget Headers() {
    return Padding(
      padding: const EdgeInsets.only(),
      child: Container(
        height: 130,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/hadder.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 50, left: 30),
          child: Text(
            "Transactions",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [Headers()],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 130),
            child: Container(
              height: 700,
              child: ListView.builder(
                  itemCount: 15,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin:
                          const EdgeInsets.only(left: 15, right: 15, top: 10),
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
        ],
      ),
    );
  }
}
