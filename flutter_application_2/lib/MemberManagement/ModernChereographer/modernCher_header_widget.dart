// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_2/MemberManagement/member_managment_page.dart';

class ModernChereographerHeaderWidget extends StatefulWidget {
  const ModernChereographerHeaderWidget({Key? key}) : super(key: key);

  @override
  _ModernChereographerHeaderWidgetState createState() =>
      _ModernChereographerHeaderWidgetState();
}

class _ModernChereographerHeaderWidgetState
    extends State<ModernChereographerHeaderWidget> {
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
            "Modern Chereographer",
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
