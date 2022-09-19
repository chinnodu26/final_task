import 'dart:async';
import 'package:final_task/home_Screens/dassbord.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:final_task/accounts/profile_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cart',
    );
  }
}

class Cart_Page extends StatefulWidget {
  @override
  _Cart_PageState createState() => _Cart_PageState();
}

class _Cart_PageState extends State<Cart_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Container(
            //decoration: BoxDecoration(color: Color(0xffFFFFFF)),
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 86,
                  ),
                  InkWell(
                    child: Icon(
                      Icons.check_circle,
                      color: Color(0xff49be25),
                      size: 50,
                    ),
                    onTap: () {
                      Navigator.pop(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return dashbord_page();
                      }));
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Item Add To Cart Successfully ",
                    style: GoogleFonts.inter(
                      decoration: TextDecoration.none,
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Color(0xffFC7508),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 150,
                    height: 40,
                    color: Color.fromARGB(0, 181, 181, 184),
                    child: InkWell(
                      child: Text(
                        "Go to dashboard ",
                        style: GoogleFonts.inter(
                          decoration: TextDecoration.none,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 88, 89, 90),
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return dashbord_page();
                        }));
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
