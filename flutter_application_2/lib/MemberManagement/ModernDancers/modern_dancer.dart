// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_2/MemberManagement/ModernDancers/moderD_header_widget.dart';
import 'package:flutter_application_2/MemberManagement/ModernDancers/modern_dancer_details.dart';
import 'package:flutter_application_2/app_colors.dart';

class ModernDancer extends StatefulWidget {
  const ModernDancer({Key? key}) : super(key: key);

  @override
  _ModernDancerState createState() => _ModernDancerState();
}

class _ModernDancerState extends State<ModernDancer> {
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
          ModernDancerHeaderWidget(),
          Expanded(
            child: SingleChildScrollView(
              child: Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Column(
                      children: [
                        ModernDancerDetails(),
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
