// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_2/Applicants/RegisteredMember/regMem_header_widget.dart';
import 'package:flutter_application_2/Applicants/RegisteredMember/registered_member_details.dart';
import 'package:flutter_application_2/app_colors.dart';

class RegisteredMember extends StatefulWidget {
  const RegisteredMember({Key? key}) : super(key: key);

  @override
  _RegisteredMemberState createState() => _RegisteredMemberState();
}

class _RegisteredMemberState extends State<RegisteredMember> {
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
          RegisteredMemHeaderWidget(),
          Expanded(
            child: SingleChildScrollView(
              child: Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Column(
                      children: [
                        RegisteredMemDetails(),
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
