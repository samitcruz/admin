// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, non_constant_identifier_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/app_colors.dart';

class TextFieldWithLessNumber extends StatelessWidget {
  const TextFieldWithLessNumber(
      {required this.Name, required this.short, required this.hint});

  final String Name;
  final bool short;
  final String hint;

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;

    return Container(
      width: short == true ? 60 : 120,
      child: TextField(
        cursorColor: Color(0xFF092E40),
        decoration: InputDecoration(
          hintStyle: TextStyle(
            color: Theme.of(context).primaryColor,
          ),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: isDarkMode
                      ? Colors.white.withOpacity(0.7)
                      : Color(0xFF092E40).withOpacity(0.5))),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: isDarkMode
                      ? Colors.white.withOpacity(0.5)
                      : Color(0xFF092E40))),
          labelText: Name,
          labelStyle: TextStyle(
              fontSize: 13, fontFamily: "Poppins", color: AppColor.bgSideMenu),
        ),
      ),
    );
  }
}
