// ignore_for_file: prefer_const_constructors, deprecated_member_use, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_const_declarations

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_application_2/consts.dart';
import 'package:flutter_application_2/Dashboard/home_page.dart';
import 'package:flutter_application_2/sign_up.dart';
import 'package:fluttertoast/fluttertoast.dart';

final Color facebookColor = Colors.white;
final Color googleColor = Colors.white;

void main() {
  runApp(LoginPageHere());
}

class LoginPageHere extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EDAA',
      theme: ThemeData(),
      home: HomePage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Row(
        children: [
          screenWidth(context) < 1000
              ? Container()
              : Expanded(
                  child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xFF092E40),
                          Color(0xFF092E40),
                          Color(0xFF265168),
                          Color(0xFFEF8242),
                          Color(0xFFFFFFFF),
                        ]),
                  ),
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsets.all(100)),
                      Text(
                        'WELCOME TO ',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.bold),
                      ),
                      Hero(
                        tag: "image",
                        child: Image(
                          alignment: Alignment.topCenter,
                          width: 700,
                          height: 200,
                          image: AssetImage("images/websitelogo.png"),
                        ),
                      ),
                    ],
                  ),
                )),
          Expanded(
              child: Container(
            margin:
                EdgeInsets.symmetric(horizontal: screenWidth(context) * 0.07),
            child: Card(
              elevation: 11,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Container(
                height: 600,
                padding: EdgeInsets.all(60),
                child: Column(
                  children: [
                    Text(
                      'Hello',
                      style: TextStyle(
                          fontSize: 35,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Please Login to Your Account',
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Poppins',
                          color: Colors.grey),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 250,
                      child: TextField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFEF8242),
                            ),
                          ),
                          labelText: 'Admin',
                          labelStyle: TextStyle(
                            color: Color(0xFFEF8242),
                            fontSize: 22,
                            fontFamily: 'Poppins',
                          ),
                          suffixIcon: Icon(
                            FontAwesomeIcons.user,
                            size: 17,
                            color: Color(0xFFEF8242),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      width: 250,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFEF8242),
                            ),
                          ),
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            color: Color(0xFFEF8242),
                            fontSize: 22,
                            fontFamily: 'Poppins',
                          ),
                          suffixIcon: Icon(
                            FontAwesomeIcons.eyeSlash,
                            size: 17,
                            color: Color(0xFFEF8242),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            child: Text("Forgot Password?",
                                style: TextStyle(
                                    fontSize: 15, fontFamily: 'Poppins')),
                            style: TextButton.styleFrom(
                                primary: Color(0xFFEF8242)),
                            onPressed: () {},
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    GestureDetector(
                      child: Container(
                        width: 250,
                        height: 50.0,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Color(0xFFEF8242))),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          },
                          color: Color(0xFFEF8242),
                          textColor: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Text("Log In",
                                style: TextStyle(
                                    fontSize: 15, fontFamily: 'Poppins')),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            child: Text("Dont have an Account? Sign Up",
                                style: TextStyle(
                                    fontSize: 15, fontFamily: 'Poppins')),
                            style: TextButton.styleFrom(
                                primary: Color(0xFFEF8242)),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignUp()));
                            },
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'OR',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomWidgets.socialButtonCircle(
                            facebookColor, FontAwesomeIcons.facebook,
                            iconColor: Color(0xFFEF8242), onTap: () {
                          Fluttertoast.showToast(msg: 'I am circle facebook');
                        }),
                        CustomWidgets.socialButtonCircle(
                            googleColor, FontAwesomeIcons.google,
                            iconColor: Color(0xFFEF8242), onTap: () {
                          Fluttertoast.showToast(msg: 'I am circle google');
                        }),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )),
        ],
      )),
    );
  }
}

class CustomWidgets {
  static Widget socialButtonCircle(color, icon, {iconColor, Function? onTap}) {
    return InkWell(
      onTap: () {
        onTap!();
      },
      child: Container(
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
          ),
          child: Icon(
            icon,
            color: iconColor,
          )), //
    );
  }
}
