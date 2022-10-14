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

class add_Product extends StatefulWidget {
  @override
  _add_ProductState createState() => _add_ProductState();
}

class _add_ProductState extends State<add_Product> {
  XFile? insidePic;
  String networkImage = "";
  final picker = ImagePicker();
  Future _getImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    //File image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        insidePic = pickedFile;
        networkImage = "";
      } else {
        print('No image selected');
      }
    });
  }

  final productNameController = TextEditingController();
  final descriptionController = TextEditingController();
  bool _isHidden = true;

  //final imageController = TextEditingController();

  bool _loading = false;

  PopularfoodAip? popularfood_model;
  void formLogin() async {
    String product_name = productNameController.text.trim();
    String description = descriptionController.text.trim();
    //String image = imageController.text.trim();

    FormData formData = FormData.fromMap({
      "product_name": product_name,
      "description": description,
      "image": MultipartFile.fromBytes(
        await insidePic!.readAsBytes(),
        filename: insidePic?.name,
      ),
    });

    setState(() {});

    var responce = await Dio().post(
        'http://jayanthi10.pythonanywhere.com/api/v1/add_products/',
        data: formData);

    if (responce.statusCode == 200) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => dashbord_page()));

      setState(() {
        _loading = true;
      });
    } else {
      print("please add  the product ");
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
                        "Product name",
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
                          controller: productNameController,
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
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Discription",
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
                          controller: descriptionController,
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
                      _getImage();
                    }),
                    child: Text('Add product')),
                SizedBox(height: 40),
                ElevatedButton(
                    onPressed: (() {
                      formLogin();
                    }),
                    child: Text('Upload'))
              ]),

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Text(
              //       "Don’t have account?",
              //       style: GoogleFonts.inter(
              //         decoration: TextDecoration.none,
              //         fontSize: 14,
              //         fontWeight: FontWeight.w500,
              //         color: Color(0xff6C7178),
              //       ),
              //     ),
              //     SizedBox(
              //       width: 7,
              //     ),
              //     InkWell(
              //       child: Text(
              //         "Create a new account",
              //         style: GoogleFonts.inter(
              //           decoration: TextDecoration.none,
              //           fontSize: 14,
              //           fontWeight: FontWeight.w500,
              //           color: Color(0xffFC7508),
              //         ),
              //       ),
              //       onTap: () {},
              //     ),
              //   ],
              // ),
            ),
          ),
        ],
      ),
    );
  }
}
