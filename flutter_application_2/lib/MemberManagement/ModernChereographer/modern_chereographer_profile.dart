// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, import_of_legacy_library_into_null_safe, sized_box_for_whitespace, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_application_2/MemberManagement/HonoraryMember/reusables.dart';
import 'package:flutter_application_2/MemberManagement/ModernChereographer/modern_chereographer.dart';
import 'package:flutter_application_2/app_colors.dart';
import 'package:flutter_application_2/side_bar_menu.dart';
import 'package:group_button/group_button.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
// import 'package:ola_like_country_picker/ola_like_country_picker.dart';
// import 'package:dropdown_date_picker/dropdown_date_picker.dart';
// import 'package:tip_dialog/tip_dialog.dart';

class ModernChereographerProfile extends StatefulWidget {
  ModernChereographerProfile({Key? key}) : super(key: key);

//   static final now = DateTime.now();
//   final dropdownDatePicker = DropdownDatePicker(
//     firstDate: ValidDate(year: now.year - 100, month: 1, day: 1),
//     lastDate: ValidDate(year: now.year, month: now.month, day: now.day),
//     textStyle: TextStyle(
//       fontFamily: "Poppins",
//       fontSize: 13,
//     ),
// //     // dropdownColor: Colors.blue[200],
//     dateHint: DateHint(year: 'yy', month: 'mm', day: 'dd'),

//     ascending: false,
//   );

  @override
  _ModernChereographerProfileState createState() =>
      _ModernChereographerProfileState();
}

class _ModernChereographerProfileState
    extends State<ModernChereographerProfile> {
  bool isChecked = false;
  //  Future<void>? _launched;

  // Future<void> _launchInWebViewOrVC(String url) async {
  //   if (!await launch(
  //     url,
  //     forceSafariVC: true,
  //     forceWebView: true,
  //     headers: <String, String>{'my_header_key': 'my_header_value'},
  //   )) {
  //     throw 'Could not launch $url';
  //   }
  // }

  // late CountryPicker c;
  // Country country = Country.fromJson(countryCodes[94]);

  // @override
  // void initState() {
  //   super.initState();
  //   c = CountryPicker(onCountrySelected: (Country country) {
  //     print(country);
  //     setState(() {
  //       this.country = country;
  //     });
  //   });
  // }

  // void checkBoxCallBack(bool? checkBoxState) {
  //   if (checkBoxState != null) {
  //     setState(() {
  //       if (isChecked == true) {
  //         isChecked = false;
  //       } else
  //         isChecked = true;

  //       // isChecked = checkBoxState;
  //       print(isChecked);
  //     });
  //   }
  // }

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
              flex: 5,
              child: ModernChereographer(),
            ),

            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppColor.white,
                borderRadius: BorderRadius.circular(20),
              ),
              padding: EdgeInsets.all(20),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Hero(
                          tag: "picture",
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage("images/profilepic.png"),
                                    fit: BoxFit.cover)),
                            child: GestureDetector(
                              onTap: () {},
                            ),
                          ),
                        ),
                        GestureDetector(
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images.logo.png'),
                              ),
                            ),
                          ),
                          onTap: () {
                            // c.launch(context);
                          },
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        TextFieldWithLessNumber(
                          Name: "Full Name",
                          short: false,
                          hint: "",
                        ),
                        Container(
                          width: 200,
                          child: IntlPhoneField(
                            showCountryFlag: true,
                            readOnly: false,
                            style: TextStyle(fontSize: 13),
                            decoration: InputDecoration(
                              labelText: 'Phone Number',
                              labelStyle: TextStyle(
                                  fontSize: 13,
                                  fontFamily: "Poppins",
                                  color: AppColor.bgSideMenu),
                            ),
                            onChanged: (phone) {
                              //print(phone.completeNumber);
                            },
                            onCountryChanged: (phone) {
                              //print('Country code changed to: ' + phone.countryCode);
                            },
                          ),
                        ),
                        //             widget.dropdownDatePicker,
                        TextFieldWithLessNumber(
                            Name: "Email",
                            short: false,
                            hint: "com@exaple.com"),

                        GroupButton(
                          direction: Axis.horizontal,
                          borderRadius: BorderRadius.circular(5),
                          isRadio: true,
                          spacing: 8,
                          unselectedColor: Colors.white,
                          unselectedBorderColor: Colors.white,
                          unselectedTextStyle: TextStyle(
                              fontSize: 13,
                              color: AppColor.bgSideMenu,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Poppins"),
                          selectedTextStyle: TextStyle(
                              color: AppColor.bgSideMenu,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Poppins"),
                          selectedColor: AppColor.orange,
                          onSelected: (index, isSelected) =>
                              print('$index button is selected'),
                          buttons: [
                            "Male",
                            "Female",
                          ],
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Place of Birth",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  color: AppColor.orange)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextFieldWithLessNumber(
                                  Name: "Region", hint: "", short: false),
                              TextFieldWithLessNumber(
                                  Name: "City", hint: "", short: false),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextFieldWithLessNumber(
                                  Name: "Woreda", hint: "", short: true),
                              TextFieldWithLessNumber(
                                  Name: "City", hint: "", short: true),
                              TextFieldWithLessNumber(
                                  Name: "Region", hint: "", short: true),
                            ],
                          ),
                          TextFieldWithLessNumber(
                              Name: "Sub City", hint: "", short: false),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Place of Residence",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.bold,
                                color: AppColor.orange)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextFieldWithLessNumber(
                                Name: "Region", hint: "", short: false),
                            TextFieldWithLessNumber(
                                Name: "City", hint: "", short: false),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextFieldWithLessNumber(
                                Name: "Woreda", hint: "", short: true),
                            TextFieldWithLessNumber(
                                Name: "Kebele", hint: "", short: true),
                            TextFieldWithLessNumber(
                                Name: "H.No", hint: "", short: true),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextFieldWithLessNumber(
                                Name: "Postal Code", hint: "", short: false),
                            TextFieldWithLessNumber(
                                Name: "Sub City", hint: "", short: false),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Place of Work",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.bold,
                                color: AppColor.orange)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextFieldWithLessNumber(
                                Name: "Name of institution",
                                hint: "",
                                short: false),
                            TextFieldWithLessNumber(
                                Name: "Job Profession", hint: "", short: false),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextFieldWithLessNumber(
                                Name: "Region", hint: "", short: true),
                            TextFieldWithLessNumber(
                                Name: "City", hint: "", short: true),
                            TextFieldWithLessNumber(
                                Name: "P.O.Box", hint: "", short: true),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextFieldWithLessNumber(
                                Name: "Woreda", hint: "", short: true),
                            TextFieldWithLessNumber(
                                Name: "Kebele", hint: "", short: true),
                            TextFieldWithLessNumber(
                                Name: "H.No", hint: "", short: true),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextFieldWithLessNumber(
                                Name: "Work Number", hint: "", short: false),
                            TextFieldWithLessNumber(
                                Name: "Sub City", hint: "", short: false)
                          ],
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.all(15),
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Uploaded CV",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  color: AppColor.bgSideMenu)),
                          TextFieldWithLessNumber(
                              Name: "Youtube Link", short: false, hint: ""),

                          // FileUploadButton()
                          // DropDown(
                          //   items: ["Video", "Youtube link", "Pdf"],
                          //   hint: Text("Type of file"),
                          //   icon: Icon(
                          //     Icons.expand_more,
                          //     color: Colors.blue,
                          //   ),
                          //   onChanged: print,
                          // ),
                        ],
                      ),
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.start,
                    //   children: [
                    //     // Checkbox(
                    //     //     checkColor: Colors.greenAccent,
                    //     //     activeColor: Colors.red,
                    //     //     value: false,
                    //     //     onChanged: checkBoxCallBack),
                    //     Checkbox(
                    //       value: isChecked,
                    //       onChanged: (value) {
                    //         setState(() {
                    //           isChecked = value!;
                    //           print(isChecked);
                    //         });
                    //       },
                    //     ),
                    //     Text(
                    //       "I've agreed to the ",
                    //       style: TextStyle(
                    //         fontFamily: "Poppins",
                    //         fontSize: 11,
                    //       ),
                    //     ),
                    //     GestureDetector(
                    //       onTap: () => setState(() {
                    //         //   _launched = _launchInWebViewOrVC(
                    //         //       "https://www.facebook.com/pg/የኢትዮጵያ-ተወዛዋዦች-ጥበብ-ማሕበር-Ethiopian-Dance-Art-Association-445934009270053/photos/");
                    //       }),
                    //       child: Text(
                    //         "Terms and conditions ",
                    //         style: TextStyle(
                    //             color: Colors.blue, fontFamily: "Poppins"),
                    //       ),
                    //     ),
                    //   ],
                    // ),
                    GestureDetector(
                      // onTap: () {
                      //   if (isChecked == true) {
                      //     print("can register");
                      //   } else {
                      //     print("cant");
                      //   }
                      // },
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(blurRadius: 0.4, color: Colors.white)
                          ],
                          borderRadius: BorderRadius.circular(20),
                          color: isChecked == true
                              ? Color(0xFFEF8242)
                              : Color(0xFFEF8242),
                        ),
                        width: 100,
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Center(
                          child: Text(
                            "Update",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class FileUploadButton extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {      
//     return GestureDetector(
//       onTap: () async {
//         var picked = await FilePicker.platform.pickFiles();
//         if (picked != null) {
//           print(picked.files.first.name);
//         }
//       }
//       child: Container(
//         margin: EdgeInsets.only(top: 15),
//         padding: EdgeInsets.all(10),
//         decoration: BoxDecoration(
//             color: Color(0xFF082534), borderRadius: BorderRadius.circular(5)),
//         child: Text(
//           'UPLOAD FILE',
//           style: TextStyle(
//             color: Colors.white,
//           ),
//         ),
//       ),
//     );
//   }
// }