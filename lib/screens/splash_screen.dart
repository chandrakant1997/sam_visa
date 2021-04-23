import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sam_visa/utils/sharedprefrence.dart';

import 'homepage.dart';
import 'loginPage.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String is_login1;
  // FirebaseMessaging _firebaseMessaging = FirebaseMessaging();
  //String _message = '';
  // FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
  // new FlutterLocalNotificationsPlugin();
  // static const methodChannel = const MethodChannel('com.tarazgroup');

  @override
  void initState() {
    super.initState();

    SharedPref prefs = SharedPref();

    Future<String> is_login = prefs.getIsLogin();
    is_login.then((data) {
      print("isLogin " + data.toString());
      is_login1 = data.toString();

      if (is_login1 == "true") {
        Timer(
            Duration(seconds: 4),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => Dashboard())));
      } else {
        Timer(
            Duration(seconds: 4),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => LoginPage())));
      }
    }, onError: (e) {
      print(e);
    });

    //  firebaseCloudMessaging_Listeners();
  }

  /* _SplashScreenState() {
    // ignore: missing_return
    methodChannel.setMethodCallHandler((call) async {
      // print(call.method);

     // firebaseCloudMessaging_Listeners();

    });
  }*/

/*  void firebaseCloudMessaging_Listeners() {
    var initializationSettingsAndroid =
    new AndroidInitializationSettings('@mipmap/ic_launcher');
    var initializationSettingsIOS = new IOSInitializationSettings();
    var initializationSettings = new InitializationSettings(
        initializationSettingsAndroid, initializationSettingsIOS);
    flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onSelectNotification: onSelectNotification);
    if (Platform.isIOS) iOS_Permission();

    _firebaseMessaging.getToken().then((token){
      print("token: "+token);
      SharedPref prefs =  SharedPref();
      prefs.setFireToken(token);
    });

    _firebaseMessaging.configure(
        onMessage: (Map<String, dynamic> message) async {
          print('on message $message');
          setState(() => _message = message["notification"]["title"]);
          showNotification(
              message['notification']['title'], message['notification']['body']);
        }, onResume: (Map<String, dynamic> message) async {
      print('on resume $message');
      setState(() => _message = message["notification"]["title"]);
      showNotification(
          message['notification']['title'], message['notification']['body']);
    }, onLaunch: (Map<String, dynamic> message) async {
      print('on launch $message');
      setState(() => _message = message["notification"]["title"]);
      showNotification(
          message['notification']['title'], message['notification']['body']);
    });
  }*/

  Future onSelectNotification(String payload) async {
    /* showDialog(
      context: context,
      builder: (_) {
        return new AlertDialog(
          title: Text("PayLoad"),
          content: Text("Payload : $payload"),
        );
      },
    );*/
  }
/*  void showNotification(String title, String body) async {
    await _demoNotification(title, body);
  }*/

/*  Future<void> _demoNotification(String title, String body) async {
    var androidPlatformChannelSpecifics = AndroidNotificationDetails(
        'channel_ID', 'channel name', 'channel description',
        importance: Importance.Max,
        playSound: true,
        showProgress: true,
        priority: Priority.High,
        ticker: 'test ticker');

    var iOSChannelSpecifics = IOSNotificationDetails();
    var platformChannelSpecifics = NotificationDetails(
        androidPlatformChannelSpecifics, iOSChannelSpecifics);
    await flutterLocalNotificationsPlugin
        .show(0, title, body, platformChannelSpecifics, payload: 'test');
  }

  void iOS_Permission() {
    _firebaseMessaging.requestNotificationPermissions(
        IosNotificationSettings(sound: true, badge: true, alert: true)
    );
    _firebaseMessaging.onIosSettingsRegistered
        .listen((IosNotificationSettings settings)
    {
      print("Settings registered: $settings");
    });
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'images/Group 2.png',
          fit: BoxFit.fill,
          width: 150.0,
          height: 150.0,
        ),
      ),
    );
  }
}
