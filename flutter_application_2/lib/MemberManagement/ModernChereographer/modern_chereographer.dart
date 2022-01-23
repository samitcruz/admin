// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_2/MemberManagement/ModernChereographer/modernCher_header_widget.dart';
import 'package:flutter_application_2/MemberManagement/ModernChereographer/modern_chereographer_details.dart';
import 'package:flutter_application_2/app_colors.dart';

class ModernChereographer extends StatefulWidget {
  const ModernChereographer({Key? key}) : super(key: key);

  @override
  _ModernChereographerState createState() => _ModernChereographerState();
}

class _ModernChereographerState extends State<ModernChereographer> {
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
          ModernChereographerHeaderWidget(),
          Expanded(
            child: SingleChildScrollView(
              child: Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Column(
                      children: [
                        ModernChereographerDetails(),
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
