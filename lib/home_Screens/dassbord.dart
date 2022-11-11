import 'dart:async';
import 'dart:convert';
//import 'dart:ffi';
import 'package:final_task/home_Screens/popular_foods.dart';
import 'package:final_task/main.dart';
import 'package:final_task/home_Screens/product_details.dart';
import 'package:final_task/accounts/profile_page.dart';
import 'package:final_task/models/popular_food_api.dart';
import 'package:final_task/widgets/dashboard_Widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'popular_foods.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dio/dio.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashbord ',
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class dashbord_page extends StatefulWidget {
  @override
  _dashbord_pageState createState() => _dashbord_pageState();
}

class _dashbord_pageState extends State<dashbord_page> {
  // List<String> list1_title = [
  //   'Strawberry ',
  //   'Cherries',
  //   'Bananas',
  //   'Red Berries',
  // ];
  // List<String> list1_prise = [
  //   'Only \$10',
  //   'Only \$12',
  //   'Only \$08',
  //   'Only \$40'
  // ];
  // List<String> list1_images = [
  //   'image12.png',
  //   'image13.png',
  //   'image14.png',
  //   'image15.png',
  // ];
  // List<String> list2_title = [
  //   'Apples ',
  //   'Red Berries',
  //   'Bananas',
  //   'Red Berries',
  // ];
  // List<String> list2_prise = [
  //   'Only \$20',
  //   'Only \$40',
  //   'Only \$08',
  //   'Only \$40',
  // ];
  // List<String> list2_images = [
  //   'image16.png',
  //   'image15.png',
  //   'image14.png',
  //   'image15.png',
  // ];

  PopularfoodAip? popularfood_model;

  void populardata() async {
    try {
      var responce = await Dio()
          .get("http://jayanthi10.pythonanywhere.com/api/v1/list_products/");
      setState(() {
        popularfood_model = popularfoodAipFromJson(jsonEncode(responce.data));

        print("${responce.data}");
      });
    } catch (e) {
      setState(() {});
      print(e);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    populardata();
  }

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

                  //Search_Field

                  Search_Field(),

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
                  Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Text("popular Foods",
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
                    popularfood_model == null
                        ? CircularProgressIndicator()
                        : Container(
                            width: 400,
                            height: 205,
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemCount: popularfood_model!.data!.length,
                              itemBuilder: (context, index) {
                                return DashBoard_Popular(
                                  productName:
                                      '${popularfood_model!.data![index].productName}',
                                  discription:
                                      '${popularfood_model!.data![index].description}',
                                  image:
                                      'http://jayanthi10.pythonanywhere.com${popularfood_model!.data![index].image}',
                                );
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
                  SizedBox(
                    height: 23,
                  ),
                  Column(children: [
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
                    popularfood_model == null
                        ? CircularProgressIndicator()
                        : Container(
                            width: 400,
                            height: 205,
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemCount: popularfood_model!.data!.length,
                              itemBuilder: (context, index) {
                                return DashBoard_Categories(
                                  productName:
                                      '${popularfood_model!.data![index].productName}',
                                  discription:
                                      '${popularfood_model!.data![index].description}',
                                  image:
                                      'http://jayanthi10.pythonanywhere.com${popularfood_model!.data![index].image}',
                                );
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
