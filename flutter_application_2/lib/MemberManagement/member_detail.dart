// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, unnecessary_new

import 'package:flutter/material.dart';
import 'package:flutter_application_2/MemberManagement/HonoraryMember/honorary_member_page.dart';
import 'package:flutter_application_2/MemberManagement/ModernChereographer/modern_chereographer_page.dart';
import 'package:flutter_application_2/MemberManagement/ModernDancers/modern_dancer_page.dart';
import 'package:flutter_application_2/MemberManagement/TraditionalChereographer/traditional_chereographer_page.dart';
import 'package:flutter_application_2/MemberManagement/TraditionalDancers/traditional_dancer_page.dart';
import 'package:flutter_application_2/MemberManagement/member_profile.dart';
import 'package:flutter_application_2/app_colors.dart';

class MemberDetails extends StatefulWidget {
  const MemberDetails({Key? key}) : super(key: key);

  @override
  _MemberDetailsState createState() => _MemberDetailsState();
}

class _MemberDetailsState extends State<MemberDetails> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 30),
        ),
        Container(
          width: 650,
          child: TextButton.icon(
            icon: Icon(Icons.search),
            label: Text('search for members'),
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(AppColor.bgSideMenu),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
          ),
        ),
        SizedBox(
          height: 35,
        ),
        Row(
          children: [
            GestureDetector(
              child: Container(
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border(
                        top: BorderSide(
                            width: 1,
                            color: AppColor.bgSideMenu,
                            style: BorderStyle.solid),
                        left: BorderSide(
                            width: 1,
                            color: AppColor.bgSideMenu,
                            style: BorderStyle.solid),
                        right: BorderSide(
                            width: 1,
                            color: AppColor.bgSideMenu,
                            style: BorderStyle.solid),
                        bottom:
                            BorderSide(color: AppColor.bgSideMenu, width: 1))),
                padding: EdgeInsets.only(bottom: 5),
                margin: EdgeInsets.symmetric(horizontal: 5),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TraditionalDancerPage()));
                  },
                  child: const Text('Traditional Dancers',
                      textAlign: TextAlign.center),
                  style: TextButton.styleFrom(
                      primary: AppColor.orange,
                      textStyle:
                          const TextStyle(fontSize: 15, fontFamily: 'Poppins')),
                ),
              ),
            ),
            GestureDetector(
              child: Container(
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border(
                        top: BorderSide(
                            width: 1,
                            color: AppColor.bgSideMenu,
                            style: BorderStyle.solid),
                        left: BorderSide(
                            width: 1,
                            color: AppColor.bgSideMenu,
                            style: BorderStyle.solid),
                        right: BorderSide(
                            width: 1,
                            color: AppColor.bgSideMenu,
                            style: BorderStyle.solid),
                        bottom:
                            BorderSide(color: AppColor.bgSideMenu, width: 1))),
                padding: EdgeInsets.only(bottom: 5),
                margin: EdgeInsets.symmetric(horizontal: 5),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ModernDancerPage()));
                  },
                  child:
                      const Text('Modern Dancers', textAlign: TextAlign.center),
                  style: TextButton.styleFrom(
                      primary: AppColor.orange,
                      textStyle:
                          const TextStyle(fontSize: 15, fontFamily: 'Poppins')),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border(
                        top: BorderSide(
                            width: 1,
                            color: AppColor.bgSideMenu,
                            style: BorderStyle.solid),
                        left: BorderSide(
                            width: 1,
                            color: AppColor.bgSideMenu,
                            style: BorderStyle.solid),
                        right: BorderSide(
                            width: 1,
                            color: AppColor.bgSideMenu,
                            style: BorderStyle.solid),
                        bottom:
                            BorderSide(color: AppColor.bgSideMenu, width: 1))),
                padding: EdgeInsets.only(bottom: 5),
                margin: EdgeInsets.symmetric(horizontal: 5),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                TraditionalChereographerPage()));
                  },
                  child: const Text('Traditional Chereographers',
                      textAlign: TextAlign.center),
                  style: TextButton.styleFrom(
                      primary: AppColor.orange,
                      textStyle:
                          const TextStyle(fontSize: 15, fontFamily: 'Poppins')),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border(
                        top: BorderSide(
                            width: 1,
                            color: AppColor.bgSideMenu,
                            style: BorderStyle.solid),
                        left: BorderSide(
                            width: 1,
                            color: AppColor.bgSideMenu,
                            style: BorderStyle.solid),
                        right: BorderSide(
                            width: 1,
                            color: AppColor.bgSideMenu,
                            style: BorderStyle.solid),
                        bottom:
                            BorderSide(color: AppColor.bgSideMenu, width: 1))),
                padding: EdgeInsets.only(bottom: 5),
                margin: EdgeInsets.symmetric(horizontal: 5),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ModernChereographerPage()));
                  },
                  child: const Text('Modern Chereographers',
                      textAlign: TextAlign.center),
                  style: TextButton.styleFrom(
                      primary: AppColor.orange,
                      textStyle:
                          const TextStyle(fontSize: 15, fontFamily: 'Poppins')),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border(
                        top: BorderSide(
                            width: 1,
                            color: AppColor.bgSideMenu,
                            style: BorderStyle.solid),
                        left: BorderSide(
                            width: 1,
                            color: AppColor.bgSideMenu,
                            style: BorderStyle.solid),
                        right: BorderSide(
                            width: 1,
                            color: AppColor.bgSideMenu,
                            style: BorderStyle.solid),
                        bottom:
                            BorderSide(color: AppColor.bgSideMenu, width: 1))),
                padding: EdgeInsets.only(bottom: 5),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HonoraryMemberPage()));
                  },
                  child: const Text('Honorary Members',
                      textAlign: TextAlign.center),
                  style: TextButton.styleFrom(
                      primary: AppColor.orange,
                      textStyle:
                          const TextStyle(fontSize: 15, fontFamily: 'Poppins')),
                ),
              ),
            ),
          ],
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Members Details",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    color: AppColor.bgColor,
                    fontSize: 22,
                  ),
                ),
              ],
            ),
            Table(
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              children: [
                /// Table Header
                TableRow(
                  decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                      color: AppColor.orange,
                      width: 2,
                    )),
                  ),
                  children: [
                    tableHeader("Full Name"),
                    tableHeader("ID"),
                    tableHeader("Category"),
                    tableHeader("Age"),
                    tableHeader("Gender"),
                    tableHeader("Email"),
                    tableHeader(""),
                  ],
                ),

                /// Table Details
                tableRow(
                  context,
                  image: Image.asset("images/profilepic.png"),
                  name: "Rebecca ",
                  id: "100",
                  category: "Trad-Dancer",
                  age: "27",
                  gender: "F",
                  email: "rebecca@gmail",
                  icons: Icons.delete,
                ),
                tableRow(
                  context,
                  image: Image.asset("images/profilepic.png"),
                  name: "Samuel ",
                  id: "200",
                  category: "Mod-Dancer",
                  age: "30",
                  gender: "M",
                  email: "samuel@gmail",
                  icons: Icons.delete,
                ),
                tableRow(
                  context,
                  image: Image.asset("images/profilepic.png"),
                  name: "Sammy ",
                  id: "300",
                  category: "Trad-Chereo",
                  age: "33",
                  gender: "M",
                  email: "sammy@gmail",
                  icons: Icons.delete,
                ),
                tableRow(
                  context,
                  image: Image.asset("images/profilepic.png"),
                  name: "Yeab ",
                  id: "400",
                  category: "Mod-Chereo",
                  age: "36",
                  gender: "M",
                  email: "yeab@gmail",
                  icons: Icons.delete,
                ),
                tableRow(
                  context,
                  image: Image.asset("images/profilepic.png"),
                  name: "Rebecca ",
                  id: "100",
                  category: "Trad-Dancer",
                  age: "27",
                  gender: "F",
                  email: "rebecca@gmail",
                  icons: Icons.delete,
                ),
                tableRow(
                  context,
                  image: Image.asset("images/profilepic.png"),
                  name: "Samuel ",
                  id: "200",
                  category: "Mod-Dancer",
                  age: "30",
                  gender: "M",
                  email: "samuel@gmail",
                  icons: Icons.delete,
                ),
                tableRow(
                  context,
                  image: Image.asset("images/profilepic.png"),
                  name: "Sammy ",
                  id: "300",
                  category: "Trad-Chereo",
                  age: "33",
                  gender: "M",
                  email: "sammy@gmail",
                  icons: Icons.delete,
                ),
                tableRow(
                  context,
                  image: Image.asset("images/profilepic.png"),
                  name: "Yeab ",
                  id: "400",
                  category: "Mod-Chereo",
                  age: "36",
                  gender: "M",
                  email: "yeab@gmail",
                  icons: Icons.delete,
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Showing 8 out of 8 Results",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: AppColor.orange,
                  borderRadius: BorderRadius.circular(100)),
              padding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20,
              ),
              child: Text(
                "View All",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  color: AppColor.black,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

TableRow tableRow(context,
    {image, name, id, category, age, gender, email, icons}) {
  return TableRow(
    decoration: BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: Colors.grey,
          width: 0.5,
        ),
      ),
    ),
    children: [
      /// Full Name
      Container(
        margin: EdgeInsets.symmetric(
          vertical: 15,
        ),
        child: Row(
          children: [
            Hero(
                tag: "picture",
                child: Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage("images/profilepic.png"),
                            fit: BoxFit.cover)))),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
                child: new Text(name),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MemberProfile()));
                }),
          ],
        ),
      ),

      /// ID
      Container(
        margin: EdgeInsets.symmetric(vertical: 15),
        child: Row(
          children: [
            SizedBox(
              height: 10,
            ),
            Text(id)
          ],
        ),
      ),

      /// Category
      Container(
        margin: EdgeInsets.symmetric(vertical: 15),
        child: Row(
          children: [
            SizedBox(
              height: 10,
            ),
            Text(category)
          ],
        ),
      ),

      /// Age
      Container(
        margin: EdgeInsets.symmetric(vertical: 15),
        child: Row(
          children: [
            SizedBox(
              height: 10,
            ),
            Text(age)
          ],
        ),
      ),

      /// Gender
      Container(
        margin: EdgeInsets.symmetric(vertical: 15),
        child: Row(
          children: [
            SizedBox(
              height: 10,
            ),
            Text(gender)
          ],
        ),
      ),

      /// Email
      Container(
        margin: EdgeInsets.symmetric(vertical: 15),
        child: Row(
          children: [
            SizedBox(
              height: 10,
            ),
            Text(email)
          ],
        ),
      ),

      /// delete
      Container(
        margin: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: Row(
          children: [
            SizedBox(
              height: 10,
            ),
            Icon(icons)
          ],
        ),
      ),
    ],
  );
}

Widget tableHeader(text) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 15),
    child: Text(
      text,
      style: TextStyle(fontWeight: FontWeight.bold, color: AppColor.black),
    ),
  );
}
