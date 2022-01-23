// ignore_for_file: prefer_const_constructors, unused_import, file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_2/MemberManagement/member_managment_page.dart';
import 'package:flutter_application_2/app_colors.dart';

class TradDancerHeaderWidget extends StatefulWidget {
  const TradDancerHeaderWidget({Key? key}) : super(key: key);

  @override
  _TradDancerHeaderWidgetState createState() => _TradDancerHeaderWidgetState();
}

class _TradDancerHeaderWidgetState extends State<TradDancerHeaderWidget> {
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
              // Interactivity or events codes here
            },
          ),
          Text(
            "Traditional Dancer",
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
