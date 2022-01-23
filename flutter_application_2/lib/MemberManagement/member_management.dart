// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_2/MemberManagement/member_detail.dart';
import 'package:flutter_application_2/MemberManagement/member_header_widget.dart';
import 'package:flutter_application_2/app_colors.dart';

class MemberManagment extends StatefulWidget {
  const MemberManagment({Key? key}) : super(key: key);

  @override
  _MemberManagmentState createState() => _MemberManagmentState();
}

class _MemberManagmentState extends State<MemberManagment> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColor.bgColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          MembersHeaderWidget(),
          Expanded(
            child: SingleChildScrollView(
              child: Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Column(
                      children: [
                        MemberDetails(),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                  Expanded(child: Container())
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
