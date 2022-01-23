// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_application_2/MemberManagement/TraditionalDancers/traditionalD_header_widget.dart';
import 'package:flutter_application_2/MemberManagement/TraditionalDancers/traditional_dancer_details.dart';
import 'package:flutter_application_2/app_colors.dart';

class TraditionDancer extends StatefulWidget {
  const TraditionDancer({Key? key}) : super(key: key);

  @override
  _TraditionDancerState createState() => _TraditionDancerState();
}

class _TraditionDancerState extends State<TraditionDancer> {
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
          TradDancerHeaderWidget(),
          Expanded(
            child: SingleChildScrollView(
              child: Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Container(
                      child: Column(
                        children: [
                          TraditionalDancersDetails(),
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
