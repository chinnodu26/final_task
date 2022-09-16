import 'dart:async';
//import 'dart:ffi';
import 'package:final_task/main.dart';
import 'package:final_task/product_details.dart';
import 'package:final_task/profile_page.dart';
import 'package:final_task/registration_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'popular_foods.dart';

import 'profile_page.dart';

class dashbord_page extends StatefulWidget {
  @override
  _dashbord_pageState createState() => _dashbord_pageState();
}

class _dashbord_pageState extends State<dashbord_page> {
  List<String> list1_title = [
    'Strawberry ',
    'Cherries',
    'Bananas',
    'Red Berries',
  ];
  List<String> list1_prise = [
    'Only \$10',
    'Only \$12',
    'Only \$08',
    'Only \$40'
  ];
  List<String> list1_images = [
    'image12.png',
    'image13.png',
    'image14.png',
    'image15.png',
  ];
  List<String> list2_title = [
    'Apples ',
    'Red Berries',
    'Bananas',
    'Red Berries',
  ];
  List<String> list2_prise = [
    'Only \$20',
    'Only \$40',
    'Only \$08',
    'Only \$40',
  ];
  List<String> list2_images = [
    'image16.png',
    'image15.png',
    'image14.png',
    'image15.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 35,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                Icons.sort,
                                color: Color(0xff000000),
                                //size: 12,
                              ),
                              onTap: () {},
                            ),
                          ],
                        ),
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
                                Icons.person_outline,
                                color: Color(0xff000000),
                                //size: 12,
                              ),
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return Profile_Page();
                                }));
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 290,
                        height: 59,
                        child: TextFormField(
                          decoration: InputDecoration(
                            fillColor: Color(0xffFFFFFF),
                            filled: true,
                            prefixIcon: IconTheme(
                                data: IconThemeData(
                                    color: Color(0xffB5B5B5), size: 18),
                                child: Icon(
                                  Icons.search,
                                )),
                            border: InputBorder.none,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12.0),
                                borderSide:
                                    BorderSide(color: Color(0xffFFFFFF))),
                            focusedBorder: OutlineInputBorder(
                              gapPadding: 0.0,
                              borderRadius: BorderRadius.circular(12.0),
                              borderSide: BorderSide(color: Color(0xffFFFFFF)),
                            ),
                            hintText: "Search Something",
                          ),
                          style: GoogleFonts.inter(
                              decoration: TextDecoration.none,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Color(0xf8F8F8F)),
                        ),
                      ),
                      SizedBox(
                        width: 11,
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
                                Icons.tune_rounded,
                                color: Color(0xffA6A6A6),
                                //size: 12,
                              ),
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return Registration_Page();
                                }));
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  InkWell(
                    child: Image.asset(
                      'image11.png',
                      width: 356,
                      height: 240,
                    ),
                    onTap: () {},
                  ),
                  SizedBox(
                    height: 33,
                  ),
                  SafeArea(
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Text("Popular Foods",
                                style: GoogleFonts.inter(
                                    decoration: TextDecoration.none,
                                    fontSize: 21,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff121212))),
                          ),
                          InkWell(
                            child: Text("View All",
                                style: GoogleFonts.inter(
                                    decoration: TextDecoration.none,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff121212))),
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (BuildContext context) {
                                return popular_foods_page();
                              }));
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 23,
                      ),
                      Container(
                          width: 400,
                          height: 205,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemCount: list1_images.length,
                            itemBuilder: (context, index) {
                              return Row(children: [
                                Column(
                                  children: [
                                    Container(
                                      width: 177,
                                      height: 195,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: Color(0xffFFFFFF),
                                      ),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              height: 12,
                                            ),
                                            InkWell(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 16.0),
                                                child: Text(list1_title[index],
                                                    style: GoogleFonts.inter(
                                                        decoration:
                                                            TextDecoration.none,
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color:
                                                            Color(0xff121212))),
                                              ),
                                              onTap: () {
                                                Navigator.push(context,
                                                    MaterialPageRoute(builder:
                                                        (BuildContext context) {
                                                  return product_page();
                                                }));
                                              },
                                            ),
                                            InkWell(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 16.0),
                                                child: Text(list1_prise[index],
                                                    style: GoogleFonts.inter(
                                                        decoration:
                                                            TextDecoration.none,
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color:
                                                            Color(0xff121212))),
                                              ),
                                              onTap: () {
                                                Navigator.push(context,
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
                                                  Navigator.push(context,
                                                      MaterialPageRoute(builder:
                                                          (BuildContext
                                                              context) {
                                                    return product_page();
                                                  }));
                                                },
                                              ),
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Align(
                                              alignment: Alignment.bottomRight,
                                              child: InkWell(
                                                onTap: () {},
                                                child: Container(
                                                  width: 30,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius
                                                        .only(
                                                            topRight: Radius
                                                                .circular(4.0),
                                                            topLeft: Radius
                                                                .circular(4.0),
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    4.0),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    10.0)),
                                                    color: Color(0xffF47014),
                                                  ),
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        InkWell(
                                                          onTap: () {},
                                                          child: Icon(
                                                            Icons.add,
                                                            color: Color(
                                                                0xffFFFFFF),
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
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return SizedBox(
                                width: 10,
                                height: 23,
                              );
                            },
                          )),
                    ]),
                  ),
                  SizedBox(
                    height: 23,
                  ),
                  SafeArea(
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Text("Categories ",
                                style: GoogleFonts.inter(
                                    decoration: TextDecoration.none,
                                    fontSize: 21,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff121212))),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Text("View All",
                                style: GoogleFonts.inter(
                                    decoration: TextDecoration.none,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff121212))),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 23,
                      ),
                      Container(
                          width: 400,
                          height: 205,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemCount: list2_images.length,
                            itemBuilder: (context, index) {
                              return Row(children: [
                                Column(
                                  children: [
                                    Container(
                                      width: 177,
                                      height: 195,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: Color(0xffFFFFFF),
                                      ),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              height: 12,
                                            ),
                                            InkWell(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 16.0),
                                                child: Text(list2_title[index],
                                                    style: GoogleFonts.inter(
                                                        decoration:
                                                            TextDecoration.none,
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color:
                                                            Color(0xff121212))),
                                              ),
                                              onTap: () {
                                                Navigator.push(context,
                                                    MaterialPageRoute(builder:
                                                        (BuildContext context) {
                                                  return product_page();
                                                }));
                                              },
                                            ),
                                            InkWell(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 16.0),
                                                child: Text(list2_prise[index],
                                                    style: GoogleFonts.inter(
                                                        decoration:
                                                            TextDecoration.none,
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color:
                                                            Color(0xff121212))),
                                              ),
                                              onTap: () {
                                                Navigator.push(context,
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
                                                  list2_images[index],
                                                  width: 131,
                                                  height: 100,
                                                ),
                                                onTap: () {
                                                  Navigator.push(context,
                                                      MaterialPageRoute(builder:
                                                          (BuildContext
                                                              context) {
                                                    return product_page();
                                                  }));
                                                },
                                              ),
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Align(
                                              alignment: Alignment.bottomRight,
                                              child: InkWell(
                                                onTap: () {},
                                                child: Container(
                                                  width: 30,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius
                                                        .only(
                                                            topRight: Radius
                                                                .circular(4.0),
                                                            topLeft: Radius
                                                                .circular(4.0),
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    4.0),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    10.0)),
                                                    color: Color(0xffF47014),
                                                  ),
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        InkWell(
                                                          onTap: () {},
                                                          child: Icon(
                                                            Icons.add,
                                                            color: Color(
                                                                0xffFFFFFF),
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
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return SizedBox(
                                width: 10,
                                height: 23,
                              );
                            },
                          )),
                    ]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
