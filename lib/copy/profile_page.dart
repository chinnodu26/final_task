import 'dart:async';
//import 'dart:ffi';
import 'package:final_task/home_Screens/dassbord.dart';
import 'package:final_task/product_details.dart';
import 'package:final_task/registration_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login_page.dart';
import 'product_details.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile',
    );
  }
}

class Profile_Page extends StatefulWidget {
  @override
  _Profile_PageState createState() => _Profile_PageState();
}

class _Profile_PageState extends State<Profile_Page> {
  List<String> title = [
    'My Orders',
    'Terms of Use',
    'Privacy Policy',
    'About',
    'Log Out'
  ];
  List<String> images = [
    'image5.png',
    'image7.png',
    'image7.png',
    'image7.png',
    'image9.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  //horizontal: 18.0,
                  // vertical: 16.0,
                  ),
              child: Column(
                children: [
                  SizedBox(
                    height: 56.68,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 22,
                      ),
                      Container(
                        width: 53,
                        height: 59,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              child: Icon(
                                Icons.arrow_back_ios,
                                color: Color(0xff000000),
                                //size: 12,
                              ),
                              onTap: () {
                                Navigator.pop(context, MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return dashbord_page();
                                }));
                              },
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 90,
                      ),
                      InkWell(
                        child: Text(
                          "Settings",
                          style: GoogleFonts.inter(
                            decoration: TextDecoration.none,
                            fontSize: 26,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff000000),
                          ),
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 41,
                  ),
                  InkWell(
                      child: Image.asset(
                        'image3.png',
                        width: 80,
                        height: 80,
                      ),
                      onTap: () {}),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "John Lincoln",
                    style: GoogleFonts.inter(
                      decoration: TextDecoration.none,
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff1C1C1C),
                    ),
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Text(
                    "9876543210",
                    style: GoogleFonts.inter(
                      decoration: TextDecoration.none,
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff1C1C1C),
                    ),
                  ),
                  SizedBox(
                    height: 21,
                  ),
                  InkWell(
                      child: Image.asset(
                        'image4.png',
                        width: 432,
                      ),
                      onTap: () {}),
                  SizedBox(
                    height: 40,
                    // height: 46,
                  ),
                  Container(
                    height: 450,
                    child: ListView.separated(
                      itemCount: images.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 36,
                                ),
                                FloatingActionButton(
                                  elevation: 1,
                                  onPressed: () {},
                                  backgroundColor: Color(0xffFFFFFF),
                                  child: Image.asset(
                                    images[index],
                                    width: 16,
                                    height: 16,
                                  ),
                                ),
                                SizedBox(
                                  width: 23,
                                ),
                                InkWell(
                                  child: Text(
                                    title[index],
                                    style: GoogleFonts.inter(
                                      decoration: TextDecoration.none,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff1C1C1C),
                                    ),
                                  ),
                                  onTap: () {},
                                ),
                              ],
                            ),
                          ],
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(height: 27);
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
