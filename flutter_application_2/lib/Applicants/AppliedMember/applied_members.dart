// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_application_2/Applicants/AppliedMember/appMem_header_widget.dart';
import 'package:flutter_application_2/Applicants/AppliedMember/applied_member_details.dart';
import 'package:flutter_application_2/app_colors.dart';

class AppliedMember extends StatefulWidget {
  const AppliedMember({Key? key}) : super(key: key);

  @override
  _AppliedMemberState createState() => _AppliedMemberState();
}

class _AppliedMemberState extends State<AppliedMember> {
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
          AppliedMemHeaderWidget(),
          Expanded(
            child: SingleChildScrollView(
              child: Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Container(
                      child: Column(
                        children: [
                          AppliedMemDetails(),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
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
