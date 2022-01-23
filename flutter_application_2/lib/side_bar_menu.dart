// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/AdminProfileSetting/AdminProfile_page.dart';
import 'package:flutter_application_2/Applicants/apllicants_page.dart';
import 'package:flutter_application_2/app_colors.dart';
import 'package:flutter_application_2/login_page.dart';
import 'package:flutter_application_2/Dashboard/home_page.dart';
import 'package:flutter_application_2/MemberManagement/member_managment_page.dart';

class SideBar extends StatefulWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  _SideBarState createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Container(
        color: AppColor.bgSideMenu,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              child: Text(
                'EDAA Admin',
                style: TextStyle(
                  color: AppColor.orange,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            DrawerListTitle(
              title: "DashBoard",
              icon: Icons.dashboard,
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
            SizedBox(
              height: 30,
            ),
            DrawerListTitle(
              title: "Member Management",
              icon: Icons.people,
              press: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MemberManagementPage()));
              },
            ),
            SizedBox(
              height: 30,
            ),
            DrawerListTitle(
              title: "Applicants",
              icon: Icons.people,
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ApplicantsPage()));
              },
            ),
            SizedBox(
              height: 30,
            ),
            DrawerListTitle(
              title: "Settings",
              icon: Icons.settings,
              press: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AdminProfilePage()));
              },
            ),
            SizedBox(
              height: 20,
            ),
            DrawerListTitle(
              title: "Logout",
              icon: Icons.logout,
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
            ),
            Spacer(),
            Image.asset('images/websitelogo.png')
          ],
        ),
      ),
    );
  }
}

class DrawerListTitle extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback press;
  const DrawerListTitle(
      {Key? key, required this.title, required this.icon, required this.press});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      iconColor: Colors.white,
      leading: Icon(icon),
      horizontalTitleGap: 0.0,
      title: Text(
        title,
        style: TextStyle(
            color: AppColor.white, fontSize: 15, fontFamily: 'Poppins'),
      ),
    );
  }
}
