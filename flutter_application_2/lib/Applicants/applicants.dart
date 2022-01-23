// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_2/Applicants/applicants_details.dart';
import 'package:flutter_application_2/Applicants/applicants_header_widget.dart';
import 'package:flutter_application_2/app_colors.dart';

class Applicants extends StatefulWidget {
  const Applicants({Key? key}) : super(key: key);

  @override
  _ApplicantsState createState() => _ApplicantsState();
}

class _ApplicantsState extends State<Applicants> {
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
          ApplicantsHeaderWidget(),
          Expanded(
            child: SingleChildScrollView(
              child: Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Column(
                      children: [
                        ApplicantsDetails(),
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
