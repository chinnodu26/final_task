import 'dart:async';
import 'dart:convert';
//import 'dart:ffi';
import 'package:dio/dio.dart';
import 'package:final_task/home_Screens/cart.dart';
import 'package:final_task/authentications/registration_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:final_task/authentications/login_page.dart';
import 'dassbord.dart';
import 'package:final_task/home_Screens/cart.dart';
import 'package:final_task/models/product_details_api.dart';

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Product details',
//     );
//   }
// }

class product_pageDetails extends StatefulWidget {
  const product_pageDetails({
    this.productId,
  });
  final int? productId;

  @override
  _product_pageDetailsState createState() => _product_pageDetailsState();
}

class _product_pageDetailsState extends State<product_pageDetails> {
  ProductDetailsAip? details_model;

  void porductDetails() async {
    try {
      var responce = await Dio().get(
          "http://jayanthi10.pythonanywhere.com/api/v1/product_details/?product_id=${widget.productId}");
      setState(() {
        details_model = productDetailsAipFromJson(jsonEncode(responce.data));

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
    porductDetails();
  }

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
                  '${details_model!.productName}',
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
              // child: Image.asset(
              //   'image10.png',
              //   width: 414,
              //   height: 303,
              // ),
              child: Image.network(
                'http://jayanthi10.pythonanywhere.com${details_model!.image}',
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
                      ' ${details_model!.productId}',
                      style: GoogleFonts.inter(
                        decoration: TextDecoration.none,
                        fontSize: 21,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff121212),
                      ),
                    ),
                    Text(
                      ' ${details_model!.productName}',
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
                        ' ${details_model!.description}',
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
