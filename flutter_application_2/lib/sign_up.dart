// ignore_for_file: prefer_const_constructors, deprecated_member_use, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, use_key_in_widget_constructors, prefer_const_declarations

import 'package:flutter/material.dart';
import 'package:flutter_application_2/consts.dart';
import 'package:flutter_application_2/Dashboard/home_page.dart';
import 'package:flutter_application_2/main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fluttertoast/fluttertoast.dart';

final Color facebookColor = Colors.white;
final Color googleColor = Colors.white;

void main() {
  runApp(SignUpHere());
}

class SignUpHere extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: SignUp(),
    );
  }
}

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Row(
        children: [
          screenWidth(context) < 780
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
                        'SIGN UP ...',
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
                padding: EdgeInsets.all(35),
                child: Column(
                  children: [
                    Text(
                      'Sign Up',
                      style: TextStyle(
                          fontSize: 35,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Please Sign up down below',
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
                          labelText: 'Email',
                          labelStyle: TextStyle(
                            color: Color(0xFFEF8242),
                            fontSize: 22,
                            fontFamily: 'Poppins',
                          ),
                          suffixIcon: Icon(
                            FontAwesomeIcons.envelope,
                            size: 17,
                            color: Color(0xFFEF8242),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15),
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
                      margin: EdgeInsets.only(top: 15),
                      width: 250,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFEF8242),
                            ),
                          ),
                          labelText: 'Confirm Password',
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
                    Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            child: Text("Already have an account? LOGIN",
                                style: TextStyle(fontFamily: 'Poppins')),
                            style: TextButton.styleFrom(
                                primary: Color(0xFFEF8242)),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MyApp()));
                            },
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
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
                          child: Text("Sign In",
                              style: TextStyle(
                                  fontSize: 15, fontFamily: 'Poppins')),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      ' Or continue with',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontFamily: 'Poppins'),
                    ),
                    // SizedBox(
                    //   height: 10,
                    // ),
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
