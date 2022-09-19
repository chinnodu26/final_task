import 'dart:async';
//import 'dart:ffi';
import 'package:final_task/home_Screens/dassbord.dart';
import 'package:final_task/main.dart';
import 'package:final_task/profile_page.dart';
import 'package:final_task/registration_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'product_details.dart';

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
                      return Row(children: [
                        Column(
                          children: [
                            Container(
                              width: 165,
                              height: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Color(0xffFFFFFF),
                              ),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 12,
                                    ),
                                    InkWell(
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 16.0),
                                        child: Text(list1_title[index],
                                            style: GoogleFonts.inter(
                                                decoration: TextDecoration.none,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xff121212))),
                                      ),
                                      onTap: () {
                                        Navigator.pop(context,
                                            MaterialPageRoute(builder:
                                                (BuildContext context) {
                                          return product_page();
                                        }));
                                      },
                                    ),
                                    InkWell(
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 16.0),
                                        child: Text(list1_prise[index],
                                            style: GoogleFonts.inter(
                                                decoration: TextDecoration.none,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xff121212))),
                                      ),
                                      onTap: () {
                                        Navigator.pop(context,
                                            MaterialPageRoute(builder:
                                                (BuildContext context) {
                                          return product_page();
                                        }));
                                      },
                                    ),
                                    SizedBox(
                                      height: 9,
                                    ),
                                    Center(
                                      child: InkWell(
                                        child: Image.asset(
                                          list1_images[index],
                                          width: 131,
                                          height: 100,
                                        ),
                                        onTap: () {
                                          Navigator.pop(context,
                                              MaterialPageRoute(builder:
                                                  (BuildContext context) {
                                            return product_page();
                                          }));
                                        },
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Align(
                                      alignment: Alignment.bottomRight,
                                      child: InkWell(
                                        onTap: () {},
                                        child: Container(
                                          width: 30,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(4.0),
                                                topLeft: Radius.circular(4.0),
                                                bottomLeft:
                                                    Radius.circular(4.0),
                                                bottomRight:
                                                    Radius.circular(10.0)),
                                            color: Color(0xffF47014),
                                          ),
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                InkWell(
                                                  onTap: () {},
                                                  child: Icon(
                                                    Icons.add,
                                                    color: Color(0xffFFFFFF),
                                                    //size: 11,
                                                  ),
                                                ),
                                              ]),
                                        ),
                                      ),
                                    ),
                                  ]),
                            ),
                          ],
                        ),
                      ]);
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
