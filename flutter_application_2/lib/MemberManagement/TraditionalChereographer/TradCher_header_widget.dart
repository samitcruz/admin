// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_2/MemberManagement/member_managment_page.dart';

class TradCherHeaderWidget extends StatefulWidget {
  const TradCherHeaderWidget({Key? key}) : super(key: key);

  @override
  _TradCherHeaderWidgetState createState() => _TradCherHeaderWidgetState();
}

class _TradCherHeaderWidgetState extends State<TradCherHeaderWidget> {
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
            "Traditional Chereographer",
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
