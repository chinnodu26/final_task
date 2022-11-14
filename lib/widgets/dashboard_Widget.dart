import 'package:final_task/home_Screens/add_product.dart';
import 'package:final_task/home_Screens/update.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:final_task/home_Screens/product_details.dart';
import 'package:final_task/home_Screens/popular_foods.dart';
import 'package:final_task/authentications/registration_page.dart';
import 'package:final_task/models/popular_food_api.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:final_task/home_Screens/delete.dart';

//Popular_List

PopularfoodAip? popularfood_model;

class DashBoard_Popular extends StatelessWidget {
  const DashBoard_Popular(
      {required this.productName,
      required this.discription,
      required this.image});
  // final String productId;
  final String discription;
  final String productName;
  final String image;

  @override
  Widget build(BuildContext context) {
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
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 12,
              ),
              InkWell(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(productName,
                      style: GoogleFonts.inter(
                          decoration: TextDecoration.none,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff121212))),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return product_pageDetails();
                  }));
                },
              ),
              InkWell(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(discription,
                      style: GoogleFonts.inter(
                          decoration: TextDecoration.none,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff121212))),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return product_pageDetails();
                  }));
                },
              ),
              SizedBox(
                height: 9,
              ),
              Center(
                child: InkWell(
                  child: Image.network(
                    image,
                    width: 131,
                    height: 100,
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return product_pageDetails();
                    }));
                  },
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(4.0),
                            topLeft: Radius.circular(4.0),
                            bottomLeft: Radius.circular(4.0),
                            bottomRight: Radius.circular(10.0)),
                        color: Color(0xffF47014),
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return update_Product();
                                }));
                              },
                              child: Icon(
                                Icons.edit,
                                color: Color(0xffFFFFFF),
                                //size: 11,
                              ),
                            ),
                          ]),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return add_Product();
                        }));
                      },
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(4.0),
                              topLeft: Radius.circular(4.0),
                              bottomLeft: Radius.circular(4.0),
                              bottomRight: Radius.circular(10.0)),
                          color: Color(0xffF47014),
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(
                                      builder: (BuildContext context) {
                                    return delete_Product();
                                  }));
                                },
                                child: Icon(
                                  Icons.delete,
                                  color: Color(0xffFFFFFF),
                                  //size: 11,
                                ),
                              ),
                            ]),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(4.0),
                            topLeft: Radius.circular(4.0),
                            bottomLeft: Radius.circular(4.0),
                            bottomRight: Radius.circular(10.0)),
                        color: Color(0xffF47014),
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return add_Product();
                                }));
                              },
                              child: Icon(
                                Icons.add,
                                color: Color(0xffFFFFFF),
                                //size: 11,
                              ),
                            ),
                          ]),
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ],
      ),
    ]);
  }
}

//Categories_List

class DashBoard_Categories extends StatelessWidget {
  const DashBoard_Categories(
      {required this.productName,
      required this.discription,
      required this.image});
  // final String productId;
  final String discription;
  final String productName;
  final String image;

  @override
  Widget build(BuildContext context) {
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
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 12,
              ),
              InkWell(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(productName,
                      style: GoogleFonts.inter(
                          decoration: TextDecoration.none,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff121212))),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return product_pageDetails();
                  }));
                },
              ),
              InkWell(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(discription,
                      style: GoogleFonts.inter(
                          decoration: TextDecoration.none,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff121212))),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return product_pageDetails();
                  }));
                },
              ),
              SizedBox(
                height: 9,
              ),
              Center(
                child: InkWell(
                  child: Image.network(
                    image,
                    width: 131,
                    height: 100,
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return product_pageDetails();
                    }));
                  },
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(4.0),
                          topLeft: Radius.circular(4.0),
                          bottomLeft: Radius.circular(4.0),
                          bottomRight: Radius.circular(10.0)),
                      color: Color(0xffF47014),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (BuildContext context) {
                                return update_Product();
                              }));
                            },
                            child: Icon(
                              Icons.edit,
                              color: Color(0xffFFFFFF),
                              //size: 11,
                            ),
                          ),
                        ]),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return add_Product();
                        }));
                      },
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(4.0),
                              topLeft: Radius.circular(4.0),
                              bottomLeft: Radius.circular(4.0),
                              bottomRight: Radius.circular(10.0)),
                          color: Color(0xffF47014),
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(
                                      builder: (BuildContext context) {
                                    return delete_Product();
                                  }));
                                },
                                child: Icon(
                                  Icons.delete,
                                  color: Color(0xffFFFFFF),
                                  //size: 11,
                                ),
                              ),
                            ]),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(4.0),
                          topLeft: Radius.circular(4.0),
                          bottomLeft: Radius.circular(4.0),
                          bottomRight: Radius.circular(10.0)),
                      color: Color(0xffF47014),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (BuildContext context) {
                                return add_Product();
                              }));
                            },
                            child: Icon(
                              Icons.add,
                              color: Color(0xffFFFFFF),
                              //size: 11,
                            ),
                          ),
                        ]),
                  ),
                ],
              ),
            ]),
          ),
        ],
      ),
    ]);
  }
}

//Search_Field

class Search_Field extends StatelessWidget {
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 290,
          height: 59,
          child: TextFormField(
            //style: TextStyle(color: Colors.pinkAccent),
            decoration: InputDecoration(
              fillColor: Color(0xffFFFFFF),
              filled: true,
              prefixIcon: IconTheme(
                  data: IconThemeData(color: Color(0xffB5B5B5), size: 18),
                  child: Icon(
                    Icons.search,
                  )),
              border: InputBorder.none,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide(color: Color(0xffFFFFFF))),
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
                color: Color(0xff000000)),
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return Registration_Page();
                  }));
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
