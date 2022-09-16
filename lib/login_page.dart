import 'dart:async';
import 'package:final_task/dassbord.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'registration_page.dart';
import 'dassbord.dart';

class Login_Page extends StatefulWidget {
  @override
  _Login_PageState createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  bool _isHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                // horizontal: 18.0,
                // vertical: 16.0,
                ),
            child: Flexible(
              child: Container(
                decoration: BoxDecoration(color: Color(0xffFFFFFF)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 86,
                    ),
                    Image.asset(
                      'image1.png',
                      width: 256,
                      height: 174,
                    ),
                    Text(
                      "Welcome Back",
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
                      "Login to continue",
                      style: GoogleFonts.inter(
                        decoration: TextDecoration.none,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff6C7178),
                      ),
                    ),
                    SizedBox(height: 83),
                    Center(
                      child: Column(
                        children: [
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
                                  Icons.mail_outline,
                                  size: 18,
                                  color: Color(0XffFC7508),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 25,
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
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 255,
                        ),
                        InkWell(
                            child: Text(
                              "Forgot Password?",
                              style: GoogleFonts.inter(
                                decoration: TextDecoration.none,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffFC7508),
                              ),
                            ),
                            onTap: () {}),
                      ],
                    ),
                    SizedBox(
                      height: 42,
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
                                "LOGIN",
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
                          return dashbord_page();
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
                          "Don’t have account?",
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
                            "Create a new account",
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
                              return Registration_Page();
                            }));
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}
