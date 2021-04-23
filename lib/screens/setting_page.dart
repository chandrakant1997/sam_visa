import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
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
          "Settings",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
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
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 30),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.notifications_none,
                            color: Color(0xff333333),
                            size: 25,
                          )
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Text(
                            'Notifications',
                            style: TextStyle(
                                color: Color(0xff333333), fontSize: 18),
                          )
                        ],
                      ),
                      Column(
                        children: [],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 30),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.credit_card_outlined,
                            color: Color(0xff333333),
                            size: 25,
                          )
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Text(
                            'Block Card',
                            style: TextStyle(
                                color: Color(0xff333333), fontSize: 18),
                          )
                        ],
                      ),
                      Column(
                        children: [],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 30),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.attach_money_outlined,
                            size: 25,
                            color: Color(0xff333333),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Text(
                            'Reduce Max Credit Amount',
                            style: TextStyle(
                                color: Color(0xff333333), fontSize: 18),
                          )
                        ],
                      ),
                      Column(
                        children: [],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 30),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.add_circle_outline,
                            color: Color(0xff333333),
                            size: 25,
                          )
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Text(
                            'Request Add-on card',
                            style: TextStyle(
                                color: Color(0xff333333), fontSize: 18),
                          )
                        ],
                      ),
                      Column(
                        children: [],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
