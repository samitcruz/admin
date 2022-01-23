// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_2/MemberManagement/TraditionalChereographer/TradCher_header_widget.dart';
import 'package:flutter_application_2/MemberManagement/TraditionalChereographer/traditional_chereographer_details.dart';
import 'package:flutter_application_2/app_colors.dart';

class TraditionalChereographer extends StatefulWidget {
  const TraditionalChereographer({Key? key}) : super(key: key);

  @override
  _TraditionalChereographerState createState() =>
      _TraditionalChereographerState();
}

class _TraditionalChereographerState extends State<TraditionalChereographer> {
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
          TradCherHeaderWidget(),
          Expanded(
            child: SingleChildScrollView(
              child: Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Column(
                      children: [
                        TraditionalChereographerDetails(),
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
