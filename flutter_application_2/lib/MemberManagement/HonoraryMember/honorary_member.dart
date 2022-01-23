// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_2/MemberManagement/HonoraryMember/honoraryMem_header_widget.dart';
import 'package:flutter_application_2/MemberManagement/HonoraryMember/honorary_member_details.dart';
import 'package:flutter_application_2/app_colors.dart';

class HonoraryMember extends StatefulWidget {
  const HonoraryMember({Key? key}) : super(key: key);

  @override
  _HonoraryMemberState createState() => _HonoraryMemberState();
}

class _HonoraryMemberState extends State<HonoraryMember> {
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
          HonoraryMemHeaderWidget(),
          Expanded(
            child: SingleChildScrollView(
              child: Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Column(
                      children: [
                        HonoraryMemberDetails(),
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
