// ignore_for_file: prefer_const_constructors, unused_import, file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_2/Applicants/apllicants_page.dart';
import 'package:flutter_application_2/MemberManagement/member_managment_page.dart';
import 'package:flutter_application_2/app_colors.dart';

class RegisteredMemHeaderWidget extends StatefulWidget {
  const RegisteredMemHeaderWidget({Key? key}) : super(key: key);

  @override
  _RegisteredMemHeaderWidgetState createState() =>
      _RegisteredMemHeaderWidgetState();
}

class _RegisteredMemHeaderWidgetState extends State<RegisteredMemHeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        children: [
          IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ApplicantsPage()));
            },
          ),
          Text(
            "Registered Members",
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
