// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MembersHeaderWidget extends StatefulWidget {
  const MembersHeaderWidget({Key? key}) : super(key: key);

  @override
  _MembersHeaderWidgetState createState() => _MembersHeaderWidgetState();
}

class _MembersHeaderWidgetState extends State<MembersHeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        children: [
          Text(
            "Members",
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
