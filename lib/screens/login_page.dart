import 'package:flutter/material.dart';
import 'package:sam_visa/screens/homepage.dart';
import 'package:sam_visa/validators/validations.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String _username = "", _password = "";

  String deviceName;
  final _formKey = GlobalKey<FormState>();

  FocusNode _emailFocusNode = FocusNode();
  FocusNode _passwordFocusNode = FocusNode();

  TextEditingController _controllerUserId = TextEditingController();
  TextEditingController _controllerPassword = TextEditingController();
  GlobalKey<ScaffoldState> scaffoldState = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    _controllerUserId.dispose();
    _controllerPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _formKey,
      body: ListView(
        children: [
          Stack(
            children: [
              Column(
                children: [
                  Image.asset(
                    'images/background.png',
                    width: 500.0,
                    height: 340.0,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 85),
                child: Center(
                  child: Image.asset(
                    'images/Group 2.png',
                    width: 140.0,
                    height: 140.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 15),
                child: Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 26,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  EmailInput(),
                  SizedBox(
                    height: 20,
                  ),
                  PasswordInput(),
                  SizedBox(
                    height: 50,
                  ),
                  loginButon()
                ],
              ),
            ),
          )
        ],
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
          suffix: Text(
            "@",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          ),

          contentPadding: EdgeInsets.fromLTRB(10.0, 5.0, 15.0, 5.0),
        ),
        textInputAction: TextInputAction.next,
        validator: emailValidator,
        onSaved: (username) => _username = username,
        /*  onFieldSubmitted: (_) {
          // fieldFocusChange(context, _emailFocusNode, _passwordFocusNode);
        },*/
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
              Icons.lock_open,
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

  Widget loginButon() {
    return GestureDetector(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.75,
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
}
