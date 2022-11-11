import 'package:final_task/home_Screens/update.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:google_fonts/google_fonts.dart';
import 'package:final_task/home_Screens/product_details.dart';
import 'package:final_task/models/popular_food_api.dart';
import 'package:final_task/widgets/Popular_Foods_card.dart';
import 'package:dio/dio.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:final_task/home_Screens/add_product.dart';

class Popular_Foods extends StatelessWidget {
  const Popular_Foods(
      {
      //required this.productId,
      required this.productName,
      required this.discription,
      required this.image});
  // final String productId;
  final String discription;
  final String productName;
  final String image;

  Widget build(BuildContext context) {
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
                  onTap: () {}),
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
                onTap: () {},
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
                  onTap: () {},
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
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
