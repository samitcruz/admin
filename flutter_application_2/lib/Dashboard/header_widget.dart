// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_application_2/AdminProfileSetting/AdminProfile_page.dart';
import 'package:flutter_application_2/app_colors.dart';
import 'package:flutter_application_2/login_page.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  _HeaderWidgetState createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        children: [
          Text(
            "Dashboard",
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                  onPressed: () => Icons.notifications,
                  icon: Icon(
                    Icons.notifications,
                    color: AppColor.orange,
                  )),
              PopupMenuButton(
                icon: Icon(Icons.settings, color: AppColor.orange),
                color: AppColor.orange,
                itemBuilder: (context) => [
                  PopupMenuItem(
                    value: 1,
                    child: Text(
                      "Profile",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                      ),
                    ),
                  ),
                  PopupMenuItem(
                    value: 2,
                    child: Text(
                      "Logout",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
                onSelected: (int menu) {
                  if (menu == 1) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AdminProfilePage()));
                  } else if (menu == 2) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  }
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
