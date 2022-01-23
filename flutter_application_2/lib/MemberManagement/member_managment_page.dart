// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter_application_2/app_colors.dart';
import 'package:flutter_application_2/MemberManagement/member_management.dart';
import 'package:flutter_application_2/side_bar_menu.dart';

import 'package:flutter/material.dart';

class MemberManagementPage extends StatefulWidget {
  @override
  _MemberManagementPage createState() => _MemberManagementPage();
}

class _MemberManagementPage extends State<MemberManagementPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgSideMenu,
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Side Navigation Menu
            Expanded(
              child: SideBar(),
            ),

            /// Main Body Part
            Expanded(
              flex: 4,
              child: MemberManagment(),
            ),
          ],
        ),
      ),
    );
  }
}
