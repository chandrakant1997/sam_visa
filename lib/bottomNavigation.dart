import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'screens/qr_code_scan.dart';
import 'screens/setting_page.dart';
import 'screens/transections_list.dart';

class BottomNavigation extends StatefulWidget {
  final currentIndex = 0;

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    //var userdetail = context.watch<LoginResponse>();
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: 105,
      color: Colors.transparent,
      child: Stack(
        children: [
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.40,
                height: MediaQuery.of(context).size.height * 0.086,
                decoration: BoxDecoration(
                  // borderRadius: BorderRadius.circular(20.0),
                  gradient: LinearGradient(
                    end: Alignment.bottomLeft,
                    begin: Alignment.topRight,
                    colors: [
                      Color(0xff380C2E),
                      Color(0xff580E33),
                      Color(0xff710F36),
                      Color(0xff710F36),
                    ],
                  ),
                ),
              )),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              child: BottomNavigationBar(
                mouseCursor: MouseCursor.uncontrolled,
                iconSize: 18,
                backgroundColor: Colors.transparent,
                selectedFontSize: 10,
                unselectedFontSize: 10,
                unselectedItemColor: Colors.white,
                unselectedLabelStyle: TextStyle(color: Colors.black),
                selectedLabelStyle: TextStyle(
                  color: Colors.black,
                ),
                selectedItemColor: Colors.green,
                showSelectedLabels: true,
                elevation: 0,
                showUnselectedLabels: true,
                currentIndex: widget.currentIndex,
                items: [
                  BottomNavigationBarItem(
                    backgroundColor: Colors.transparent,
                    icon: Icon(Icons.my_library_books_sharp, size: 27
                        // color: Colors.red,
                        ),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    backgroundColor: Colors.transparent,
                    icon: GestureDetector(
                      child: Icon(Icons.collections_bookmark_sharp, size: 27
                          // color: Colors.red,
                          ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ScanPage()),
                        );
                      },
                    ),
                    label: 'Pay',
                  ),
                  BottomNavigationBarItem(
                    backgroundColor: Colors.transparent,
                    icon: GestureDetector(
                      child: Icon(Icons.add_to_photos, size: 27
                          // color: Colors.red,
                          ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Transection()),
                        );
                      },
                    ),
                    label: 'Transactions',
                  ),
                  BottomNavigationBarItem(
                    backgroundColor: Colors.transparent,
                    icon: GestureDetector(
                      child: Icon(
                        Icons.settings, size: 27,
                        // color: Colors.red,
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    SettingPage()));
                      },
                    ),
                    label: 'Settings',
                  ),
                ],
              ),
            ),
          ),
          /* Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  elevation: 10,
                  onPressed: () {
                    */ /*Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => (userdetail.userdetail != null)
                            ? MyAccount()
                            : LoginPage()));*/ /*
                  },
                  backgroundColor: Colors.white,
                  child: Image.asset(
                    'images/person.png',
                    scale: width * 0.007,
                  ),
                ),
              ],
            ),
          ),*/
        ],
      ),
    );
  }
}
