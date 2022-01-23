// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_application_2/AdminProfileSetting/AdminProfile_page.dart';
import 'package:flutter_application_2/app_colors.dart';
import 'package:flutter_application_2/consts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class SeettingAdminProfile extends StatefulWidget {
  const SeettingAdminProfile({Key? key}) : super(key: key);

  @override
  _SeettingAdminProfileState createState() => _SeettingAdminProfileState();
}

class _SeettingAdminProfileState extends State<SeettingAdminProfile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: screenWidth(context) * 0.09),
      color: Color(0xFFEF8242),
      child: Card(
        elevation: 11,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Container(
          width: 950,
          height: 485,
          margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 50.0),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("images/profilepic.png"),
                        radius: 50.0,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Melaku",
                        style: TextStyle(
                          fontSize: 17.0,
                          color: AppColor.bgSideMenu,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "melaku@gmail.com",
                        style:
                            TextStyle(fontSize: 10.0, color: AppColor.orange),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Ethiopian",
                        style: TextStyle(
                          fontSize: 10.0,
                          color: AppColor.orange,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.person, color: Color(0xFFEF8242)),
                          hintText: '',
                          labelText: 'Full Name',
                          labelStyle: TextStyle(
                              fontSize: 13,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFEF8242)),
                        ),
                      ),
                      SizedBox(
                        height: 45,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.email, color: Color(0xFFEF8242)),
                          hintText: '',
                          labelText: 'Email',
                          labelStyle: TextStyle(
                              fontSize: 13,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFEF8242)),
                        ),
                      ),
                      SizedBox(
                        height: 45,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.password, color: Color(0xFFEF8242)),
                          hintText: '',
                          labelText: 'Password',
                          labelStyle: TextStyle(
                              fontSize: 13,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFEF8242)),
                        ),
                      ),
                      SizedBox(
                        height: 45,
                      ),
                      Container(
                        width: 500,
                        child: IntlPhoneField(
                          showCountryFlag: false,
                          readOnly: false,
                          style: TextStyle(fontSize: 13),
                          decoration: InputDecoration(
                            labelText: 'Phone Number',
                            labelStyle: TextStyle(
                                fontSize: 13,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.bold,
                                color: AppColor.orange),
                          ),
                          onChanged: (phone) {
                            //print(phone.completeNumber);
                          },
                          onCountryChanged: (phone) {
                            //print('Country code changed to: ' + phone.countryCode);
                          },
                        ),
                      ),
                      SizedBox(
                        height: 45,
                      ),
                      GestureDetector(
                        child: Container(
                          width: 100,
                          height: 40.0,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: Color(0xFFEF8242))),
                            onPressed: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) =>
                              //             UpdateAdminProfile()));
                            },
                            color: Color(0xFFEF8242),
                            textColor: Colors.white,
                            child: Padding(
                              padding: EdgeInsets.all(12.0),
                              child: Text("Update",
                                  style: TextStyle(
                                      fontSize: 15, fontFamily: 'Poppins')),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
