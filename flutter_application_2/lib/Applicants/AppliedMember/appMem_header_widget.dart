// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_2/Applicants/apllicants_page.dart';

class AppliedMemHeaderWidget extends StatefulWidget {
  const AppliedMemHeaderWidget({Key? key}) : super(key: key);

  @override
  _AppliedMemHeaderWidgetState createState() => _AppliedMemHeaderWidgetState();
}

class _AppliedMemHeaderWidgetState extends State<AppliedMemHeaderWidget> {
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
            "Applied Members",
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
