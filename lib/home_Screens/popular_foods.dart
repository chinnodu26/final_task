import 'dart:async';
import 'dart:convert';
import 'dart:ffi';

//import 'dart:ffi';
import 'package:dio/dio.dart';
import 'package:final_task/home_Screens/dassbord.dart';
import 'package:final_task/main.dart';
import 'package:final_task/accounts/profile_page.dart';
import 'package:final_task/authentications/registration_page.dart';
import 'package:final_task/widgets/Popular_Foods_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:final_task/home_Screens/product_details.dart';
import 'package:final_task/models/popular_food_api.dart';

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
  // List<String> list1_title = [
  //   'Apples ',
  //   'Red Berries ',
  //   'Strawberry ',
  //   'Bananas ',
  //   'Apples ',
  //   'Cherries',
  //   'Strawberry ',
  //   'Bananas ',
  // ];
  // List<String> list1_prise = [
  //   'Only \$20',
  //   'Only \$40',
  //   'Only \$10',
  //   'Only \$08',
  //   'Only \$12',
  //   'Only \$20',
  //   'Only \$10',
  //   'Only \$08',
  // ];
  // List<String> list1_images = [
  //   'image16.png',
  //   'image15.png',
  //   'image12.png',
  //   'image14.png',
  //   'image16.png',
  //   'image13.png',
  //   'image12.png',
  //   'image14.png',
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
                popularfood_model == null
                    ? CircularProgressIndicator()
                    : Container(
                        height: 620,
                        child: GridView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: popularfood_model!.data!.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 5 / 6,
                            crossAxisCount: 2,
                            crossAxisSpacing: 12.0,
                            mainAxisSpacing: 16.0,
                          ),
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              child: Popular_Foods(
                                productName:
                                    '${popularfood_model!.data![index].productName}',
                                productId:
                                    '${popularfood_model!.data![index].productId}',
                                image:
                                    'http://jayanthi10.pythonanywhere.com${popularfood_model!.data![index].image}',
                              ),
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return product_page(
                                    productId: popularfood_model!
                                        .data![index].productId,
                                  );
                                }));
                              },
                            );
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
