import 'dart:async';
//import 'dart:ffi';
import 'package:final_task/home_Screens/dassbord.dart';
import 'package:final_task/main.dart';
import 'package:final_task/accounts/profile_page.dart';
import 'package:final_task/authentications/registration_page.dart';
import 'package:final_task/widgets/Popular_Foods.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:final_task/home_Screens/product_details.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Popular food',
    );
  }
}

class popular_foods_page extends StatefulWidget {
  @override
  _popular_foods_pageState createState() => _popular_foods_pageState();
}

class _popular_foods_pageState extends State<popular_foods_page> {
  List<String> list1_title = [
    'Apples ',
    'Red Berries ',
    'Strawberry ',
    'Bananas ',
    'Apples ',
    'Cherries',
    'Strawberry ',
    'Bananas ',
  ];
  List<String> list1_prise = [
    'Only \$20',
    'Only \$40',
    'Only \$10',
    'Only \$08',
    'Only \$12',
    'Only \$20',
    'Only \$10',
    'Only \$08',
  ];
  List<String> list1_images = [
    'image16.png',
    'image15.png',
    'image12.png',
    'image14.png',
    'image16.png',
    'image13.png',
    'image12.png',
    'image14.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      //resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(children: [
                SizedBox(
                  height: 35,
                ),
                Row(
                  children: [
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
                      width: 56,
                    ),
                    InkWell(
                      child: Text("Popular Foods",
                          style: GoogleFonts.inter(
                              decoration: TextDecoration.none,
                              fontSize: 21,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff121212))),
                      onTap: () {},
                    ),
                  ],
                ),
                SizedBox(
                  height: 35,
                ),
                Container(
                  height: 620,
                  child: GridView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: list1_images.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 5 / 6,
                      crossAxisCount: 2,
                      crossAxisSpacing: 12.0,
                      mainAxisSpacing: 16.0,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return Popular_Foods(
                          list1_title: '${list1_title[index]}',
                          list1_prise: '${list1_prise[index]}',
                          list1_images: '${list1_images[index]}');
                    },
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
