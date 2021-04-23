import 'package:flutter/material.dart';
import 'package:sam_visa/validators/validations.dart';

import 'homepage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _username = "", _password = "";

  String deviceName;
  final _formKey = GlobalKey<FormState>();

  FocusNode _emailFocusNode = FocusNode();
  FocusNode _passwordFocusNode = FocusNode();

  TextEditingController _controllerUserId = TextEditingController();
  TextEditingController _controllerPassword = TextEditingController();
  GlobalKey<ScaffoldState> scaffoldState = GlobalKey<ScaffoldState>();

  String _currentAddress, userId1, password1, firetoken;
  bool isInternet = true;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    _controllerUserId.dispose();
    _controllerPassword.dispose();
    super.dispose();
  }

  Future<bool> _onWillPop() async {
    return (await showDialog(
          context: context,
          builder: (context) => new AlertDialog(
            title: new Text('Are you sure?'),
            content: new Text('Do you want to exit an App'),
            actions: <Widget>[
              new FlatButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: new Text('No'),
              ),
              new FlatButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: new Text('Yes'),
              ),
            ],
          ),
        )) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: _onWillPop,
        child: Scaffold(
          key: scaffoldState,
          body: HomePageBody(),
        ));
  }

  Widget HomePageBody() {
    return Container(
      padding: EdgeInsets.only(),
      child: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              loginLogo(),
              SizedBox(
                height: 40,
              ),
              loginText(),
              EmailInput(),
              SizedBox(
                height: 20,
              ),
              PasswordInput(),
              SizedBox(
                height: 30,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  InkWell(
                      onTap: () {
                        /*Navigator.push(
                            context,
                            //MaterialPageRoute(builder: (context) => ForgotPassword())
                            MaterialPageRoute(
                                builder: (context) =>
                                    ForgotOTPVerification("0")));*/
                      },
                      child: Text(
                        'Forgot Password ?',
                        style: TextStyle(color: Colors.red),
                      )),
                  loginButon(),
                ],
              ),
              _isLoading
                  ? Center(child: CircularProgressIndicator())
                  : Container(
                      height: 10.0,
                      width: 10.0,
                    ),
              // SizedBox(height: 10,),

              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Text(
                        "Don\'t You Have an account? Sign Up",
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                    ),
                    onTap: () {
                      /*      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignupPage()));*/
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget loginLogo() {
    return Padding(
      padding: const EdgeInsets.only(),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.5,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/background.png"), fit: BoxFit.fill)),
        child: Center(
          child: Image.asset(
            "images/Group 2.png",
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }

  Widget EmailInput() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 30),
      child: TextFormField(
        controller: _controllerUserId,
        focusNode: _emailFocusNode,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          // labelText: "Email",
          hintText: "User Name",
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(5.0),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            // borderSide: BorderSide(color: Colors.black,width: 1.0)
          ),
          suffixIcon: const Icon(
            Icons.email,
            color: Colors.black,
          ),
          contentPadding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
        ),
        textInputAction: TextInputAction.next,
        validator: emailValidator,
        onSaved: (username) => _username = username,
        onFieldSubmitted: (_) {
          // fieldFocusChange(context, _emailFocusNode, _passwordFocusNode);
        },
      ),
    );
  }

  Widget PasswordInput() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 30),
      child: TextFormField(
        controller: _controllerPassword,
        focusNode: _passwordFocusNode,
        keyboardType: TextInputType.text,
        obscureText: true,
        decoration: InputDecoration(
            hintText: "Password",
            suffixIcon: Icon(
              Icons.lock,
              color: Colors.black,
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(5.0),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            contentPadding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0)),
        // textInputAction: TextInputAction.done,

        validator: passwordValidator,
        onSaved: (password) => _password = password,
      ),
    );
  }

  Widget loginText() {
    return Align(
        alignment: AlignmentDirectional.topStart,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20, left: 25),
          child: Text(
            'Login',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 25.0,
            ),
          ),
        ));
  }

  Widget loginButon() {
    return GestureDetector(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.40,
        height: MediaQuery.of(context).size.height * 0.060,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
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
        child: Center(
          child: Text(
            "Login",
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      onTap: () {
        if (_formKey.currentState.validate()) {
          _formKey.currentState.save();
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Dashboard()),
          );
/*
                setState(() {
                  _isLoading = true;
                });*/

          /*  loginAPI(_controllerUserId.text, _controllerPassword.text);*/
        }
      },
    );
  }
/*  RaisedButton loginButon() {
    return RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      color: Colors.grey,
      onPressed: () {
        if (_formKey.currentState.validate()) {
          _formKey.currentState.save();

          */ /* setState(() {
            _isLoading = true;
          });

          loginAPI(_controllerUserId.text, _controllerPassword.text);*/ /*
        }
      },
      child: Text(
        "Login",
        style: TextStyle(color: Colors.white, fontSize: 15),
      ),
    );
  }*/

/*  deviceInfo() async {
    try {
      if (Platform.isAndroid) {
        deviceName = "Android";
      } else if (Platform.isIOS) {
        deviceName = "IOS";
      }
    } on PlatformException {
      print('Failed to get platform version');
    }
  }*/

  /* loginAPI(String email, String password) async {
    Map data = {
      "MobileNumber": email,
      "Password": password,
      "token": firetoken,
      "requested_from": "$deviceName"
    };
    print(data);

    var jsonData = null;
    var response =
        await http.post(AppString.baseURL + "User/PostVerifyLogin", body: data);
    if (response.statusCode == 200) {
      jsonData = json.decode(response.body);
      var status = jsonData['responseCode'];
      print(jsonData);
      if (status == 0) {
        var loginToken = jsonData['accessToken'];
        var userId = jsonData['UserId'];
        setState(() {
          SharedPref prefs = SharedPref();
          prefs.setLoginToken(loginToken);
          prefs.setIsLogin("true");
          prefs.setIsAdmin("0");
          prefs.setUserId(userId);
          _isLoading = false;
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => Dashboard1()));
        });
      } else {
        setState(() {
          _isLoading = false;
        });
        scaffoldState.currentState.showSnackBar(new SnackBar(
            content: new Text(
          'Please enter correct username/password',
          style: new TextStyle(fontFamily: 'Schyler'),
        )));
      }
    } else {
      setState(() {
        _isLoading = false;
      });
      scaffoldState.currentState.showSnackBar(new SnackBar(
          content: new Text(
        'Please enter correct username/password',
        style: new TextStyle(fontFamily: 'Schyler'),
      )));
    }
  }*/
}
