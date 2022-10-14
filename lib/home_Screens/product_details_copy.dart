import 'dart:async';
//import 'dart:ffi';
import 'package:final_task/home_Screens/cart.dart';
import 'package:final_task/authentications/registration_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:final_task/authentications/login_page.dart';
import 'dassbord.dart';
import 'package:final_task/home_Screens/cart.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product details',
    );
  }
}

class product_page extends StatefulWidget {
  @override
  _product_pageState createState() => _product_pageState();
}

class _product_pageState extends State<product_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
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
                Text(
                  "Cherries",
                  style: GoogleFonts.inter(
                    decoration: TextDecoration.none,
                    fontSize: 21,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff121212),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 41,
            ),
            InkWell(
              child: Image.asset(
                'image10.png',
                width: 414,
                height: 303,
              ),
              onTap: () {},
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(
                  width: 22,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "JBest Cherries",
                      style: GoogleFonts.inter(
                        decoration: TextDecoration.none,
                        fontSize: 21,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff121212),
                      ),
                    ),
                    Text(
                      "Ordered 500G + 500G",
                      style: GoogleFonts.inter(
                        decoration: TextDecoration.none,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff121212),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "About Product",
                      style: GoogleFonts.inter(
                        decoration: TextDecoration.none,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffFE6F00),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 350,
                      child: Text(
                        "Amet minim mollit non deserunt ullamco est sit\naliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.\n Exercitation veniam consequat sunt nostrud amet.Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit",
                        style: GoogleFonts.inter(
                          decoration: TextDecoration.none,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff121212),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              child: Container(
                  width: 380,
                  height: 68,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xffF46A07)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        child: Text(
                          "Add to cart",
                          style: GoogleFonts.poppins(
                            decoration: TextDecoration.none,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffffffff),
                          ),
                        ),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (BuildContext context) {
                            return Cart_Page();
                          }));
                        },
                      ),
                    ],
                  )),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return Cart_Page();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}
