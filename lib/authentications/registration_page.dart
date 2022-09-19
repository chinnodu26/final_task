import 'dart:async';
import 'dart:developer';
import 'package:final_task/home_Screens/dassbord.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login_page.dart';
import 'package:final_task/accounts/profile_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Registration',
    );
  }
}

class Registration_Page extends StatefulWidget {
  @override
  _Registration_PageState createState() => _Registration_PageState();
}

class _Registration_PageState extends State<Registration_Page> {
  bool _isHidden = true;

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
              child: Container(
                decoration: BoxDecoration(color: Color(0xffFFFFFF)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 61,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 30,
                        ),
                        InkWell(
                          child: Icon(
                            Icons.arrow_back,
                            color: Color(0xffFC7508),
                            //size: 12,
                          ),
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (BuildContext context) {
                              return Login_Page();
                            }));
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 41,
                    ),
                    Text(
                      "Create Account",
                      style: GoogleFonts.inter(
                        decoration: TextDecoration.none,
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffFC7508),
                      ),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Text(
                      "Create your New Journey",
                      style: GoogleFonts.inter(
                        decoration: TextDecoration.none,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff6C7178),
                      ),
                    ),
                    SizedBox(height: 54),
                    Center(
                      child: Column(
                        children: [
                          SizedBox(
                            width: 336,
                            height: 56,
                            child: TextFormField(
                              initialValue: 'johnlincoln ',
                              decoration: InputDecoration(
                                labelText: 'NAME',
                                //errorText: 'Error message',
                                labelStyle: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff6C7178)),
                                border: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xff262632), width: 1.0)),
                                prefixIcon: Icon(
                                  Icons.person_outline,
                                  size: 18,
                                  color: Color(0XffFC7508),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 32,
                          ),
                          SizedBox(
                            width: 336,
                            height: 56,
                            child: TextFormField(
                              initialValue: 'john123@gmail.com ',
                              decoration: InputDecoration(
                                labelText: 'EMAIL',
                                //errorText: 'Error message',
                                labelStyle: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff6C7178)),
                                border: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xff262632), width: 1.0)),
                                prefixIcon: Icon(
                                  Icons.email_outlined,
                                  size: 18,
                                  color: Color(0XffFC7508),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 32,
                          ),
                          SizedBox(
                            width: 336,
                            height: 56,
                            child: TextFormField(
                              initialValue: '9876543210 ',
                              decoration: InputDecoration(
                                labelText: 'PHONE NUMBER',
                                //errorText: 'Error message',
                                labelStyle: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff6C7178)),
                                border: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xff262632), width: 1.0)),
                                prefixIcon: Icon(
                                  Icons.phone_iphone_outlined,
                                  size: 18,
                                  color: Color(0XffFC7508),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 32,
                          ),
                          SizedBox(
                            width: 336,
                            height: 56,
                            child: TextField(
                              obscureText: _isHidden,
                              decoration: InputDecoration(
                                labelText: 'PASSWORD',
                                border: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xff262632), width: 1.0)),
                                prefixIcon: Icon(
                                  Icons.lock_outline,
                                  size: 18,
                                  color: Color(0XffFC7508),
                                ),
                                labelStyle: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff6C7178)),
                                suffix: InkWell(
                                  onTap: _togglePasswordView,
                                  child: Icon(
                                    _isHidden
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    size: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 32,
                          ),
                          SizedBox(
                            width: 336,
                            height: 56,
                            child: TextField(
                              obscureText: _isHidden,
                              decoration: InputDecoration(
                                labelText: 'CONFIRM PASSWORD',
                                border: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xff262632), width: 1.0)),
                                prefixIcon: Icon(
                                  Icons.lock_outline,
                                  size: 18,
                                  color: Color(0XffFC7508),
                                ),
                                labelStyle: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff6C7178)),
                                suffix: InkWell(
                                  onTap: _togglePasswordView,
                                  child: Icon(
                                    _isHidden
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    size: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 39,
                    ),
                    InkWell(
                      child: Container(
                          width: 336,
                          height: 56,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Color(0xffFC7508)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "CREATE ACCOUNT",
                                style: GoogleFonts.poppins(
                                  decoration: TextDecoration.none,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ],
                          )),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return Login_Page();
                        }));
                      },
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have a account?",
                          style: GoogleFonts.inter(
                            decoration: TextDecoration.none,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff6C7178),
                          ),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        InkWell(
                          child: Text(
                            "Login",
                            style: GoogleFonts.inter(
                              decoration: TextDecoration.none,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xffFC7508),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (BuildContext context) {
                              return Login_Page();
                            }));
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}
