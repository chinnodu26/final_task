import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:final_task/models/popular_food_api.dart';
import 'package:final_task/home_Screens/dassbord.dart';
import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Login',
//     );
//   }
// }

class delete_Product extends StatefulWidget {
  @override
  _delete_ProductState createState() => _delete_ProductState();
}

class _delete_ProductState extends State<delete_Product> {
  final product_idController = TextEditingController();

  bool _isHidden = true;

  //final imageController = TextEditingController();

  bool _loading = false;

  PopularfoodAip? popularfood_model;
  void formDelete() async {
    String product_id = product_idController.text.trim();

    //String image = imageController.text.trim();

    FormData formData = FormData.fromMap({
      "product_id": product_id,
    });

    setState(() {});

    var responce = await Dio().delete(
        'http://jayanthi10.pythonanywhere.com/api/v1/delete_product/',
        data: formData);

    if (responce.statusCode == 200) {
      print('successfully deleted the product');
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => dashbord_page()));

      setState(() {
        _loading = true;
      });
    } else {
      print(" delete product ");
    }
  }

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
            child: Container(
              decoration: BoxDecoration(color: Color(0xffFFFFFF)),
              child: Column(children: [
                SizedBox(
                  height: 86,
                ),
                Image.asset(
                  'image1.png',
                  width: 256,
                  height: 174,
                ),
                SizedBox(
                  height: 14,
                ),
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Product id",
                        style: GoogleFonts.inter(
                          decoration: TextDecoration.none,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff000000),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        width: 336,
                        height: 60,
                        child: TextFormField(
                          controller: product_idController,
                          decoration: InputDecoration(
                            labelStyle: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff6C7178)),
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xff262632), width: 1.0)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 42,
                ),
                ElevatedButton(
                    onPressed: (() {
                      formDelete();
                    }),
                    child: Text('DELETE'))
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
