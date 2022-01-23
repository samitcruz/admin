// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_2/MemberManagement/member_managment_page.dart';

class HonoraryMemHeaderWidget extends StatefulWidget {
  const HonoraryMemHeaderWidget({Key? key}) : super(key: key);

  @override
  _HonoraryMemHeaderWidgetState createState() =>
      _HonoraryMemHeaderWidgetState();
}

class _HonoraryMemHeaderWidgetState extends State<HonoraryMemHeaderWidget> {
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
            "Honorary Members",
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
