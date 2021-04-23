import 'package:flutter/material.dart';
import 'package:sam_visa/constant/constant.dart';

import 'screens/loginPage.dart';

void main() => runApp(new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppString.appName,
      // routes: routes,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        // primaryColor: Colors.white,
        brightness: Brightness.light,
        //backgroundColor: const Color(0xFF212121),
        accentColor: Colors.indigo,
        accentIconTheme: IconThemeData(color: Colors.black),
        dividerColor: Colors.black12,
        fontFamily: 'Schyler',
      ),
      home: LoginPage(),
      // home: Bookkeeper(),
      // home: PaymentScreen(),
      //home: ImageUpload(),
    ));
