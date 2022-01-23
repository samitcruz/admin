// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_application_2/MemberManagement/TraditionalDancers/traditional_dancer_profile.dart';
import 'package:flutter_application_2/app_colors.dart';

class TraditionalDancersDetails extends StatefulWidget {
  const TraditionalDancersDetails({Key? key}) : super(key: key);

  @override
  _TraditionalDancersDetailsState createState() =>
      _TraditionalDancersDetailsState();
}

class _TraditionalDancersDetailsState extends State<TraditionalDancersDetails> {
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
            label: Text('search for traditional dancers'),
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
              onTap: () {},
              child: Container(
                width: 100,
                decoration: BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(color: AppColor.bgSideMenu, width: 1))),
                padding: EdgeInsets.only(bottom: 5),
                margin: EdgeInsets.symmetric(horizontal: 300),
                child: TextButton(
                  onPressed: () {},
                  child: const Text('Traditional Dancers',
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

TableRow tableRow(context, {image, name, id, age, gender, email, icons}) {
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
                child: Text(name),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TraditionalDancerProfile()));
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
