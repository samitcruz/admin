// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/MemberManagement/member_managment_page.dart';

class ApplicantsHeaderWidget extends StatefulWidget {
  const ApplicantsHeaderWidget({Key? key}) : super(key: key);

  @override
  _ApplicantsHeaderWidgetState createState() => _ApplicantsHeaderWidgetState();
}

class _ApplicantsHeaderWidgetState extends State<ApplicantsHeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        children: [
          IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MemberManagementPage()));
            },
          ),
          Text(
            "Applicants",
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
