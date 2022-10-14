final userNameController = TextEditingController();
final passwordController = TextEditingController();

bool _loading = false;
void formLogin() async {
  String userName = userNameController.text.trim();
  String password = passwordController.text.trim();

  FormData formData = FormData.fromMap({
    "username": userName,
    "password": password,
  });

  setState(() {});

  var responce = await Dio().post(
      'http://jayanthi10.pythonanywhere.com/api/v1/login/',
      data: formData);

  if (responce.statusCode == 200) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => dashbord_page()));

    setState(() {
      _loading = true;
    });
  } else {
    print("wrong passwor");
  }
}




child: InkWell(
                  child: Image.asset(
                    image,
                    width: 131,
                    height: 100,
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return product_page();
                    }));
                  },
                ),









                import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'home_Screens/dashboard.dart';

class Add_product extends StatefulWidget {
  const Add_product({ Key? key }) : super(key: key);

  @override
  State<Add_product> createState() => _Add_productState();
}

class _Add_productState extends State<Add_product> {

// File? image;
// final _picker = ImagePicker();
// bool showspinner=false;

// Future getImage() async{
//   final PickedFile=await _picker.pickImage(source: ImageSource.gallery,imageQuality: 80);
// }
// Setsate((){

// })}

 XFile? insidePic;
  String networkImage = "";
  final picker = ImagePicker();
  Future getImage() async {
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

  final productController= TextEditingController();
  final descriptionController=TextEditingController();
  bool _loading=false;

  void performLogin() async{

  String product=productController.text.trim();
  String description=descriptionController.text.trim();

  FormData formData=FormData.fromMap({

  "product_name":product,
  "description":description,
  "image": MultipartFile.fromBytes(
        await insidePic!.readAsBytes(),
        filename: insidePic?.name,
      ),

   });

  setState(() {
    
  });
  Response response=await Dio().post("http://jayanthi10.pythonanywhere.com/api/v1/add_products/",data: formData);

  
  if(response.statusCode==200){
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) { 
      return Dashboard();}));

       setState(() {
    _loading=true;
  });
  }


  else{
    print("wrong credentioal");
  }

}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Column(
                        children: [
                          TextField(
                          controller: productController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.mail,color: Color(0xffFC7508),),
                          labelText: 'PRODUCT',
                          border: OutlineInputBorder( 
                            borderRadius: BorderRadius.circular(10)
                          ),
                          hintText: 'Enter productname',
                          
                        ),
                      ),
                      SizedBox(height: 25,),
                      TextField(
                        controller: descriptionController,
                        //obscureText: true,
                        decoration: InputDecoration(
                          
                          prefixIcon: Icon(Icons.person,color: Color(0xffFC7508),),
                          labelText: 'DESCRIPTION',
                          border: OutlineInputBorder( 
                            borderRadius: BorderRadius.circular(10)
                          ),
                          hintText: 'Enter description',
                          
                        ),
                      ),
                      // Container(
                      //   child: image==null?Center(child: Text('Pick image'),),
                      // ),
                      // Container(
                      //   child: Center(child: Image.file(
                      //     File(image!.Path).absolute,
                      //     height: 100,
                      //     width: 100,
                      //     fit: BoxFit.cover,
                      //     )),
                      // ),
                      
      
                    SizedBox(height: 10,),
      
                      ElevatedButton(onPressed: (() {
                         getImage();
                         
                     
                   }), 
                   child: Text('Add product')),
                   SizedBox(height: 200,),
      
                   ElevatedButton(onPressed: (() {
                       
                  performLogin();
                   
                   }), 
                   child: Text('Upload'))
            ],
          ),
              ),
            ]
          ),
        ),
      )
    );
  }
}











//productdetails
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
  ProductDetailsAip? details_model;

  void porductDetails() async {
    try {
      var responce = await Dio().get(
          "http://jayanthi10.pythonanywhere.com/api/v1/product_details/?product_id=1");
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
            ProductDetailsAip == null
                ? CircularProgressIndicator()
                : SizedBox(
                    height: 56.68,
                  ),
            Row(
              children: [
                details_model == null
                    ? CircularProgressIndicator()
                    : SizedBox(
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
            ProductDetailsAip == null
                ? CircularProgressIndicator()
                : InkWell(
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
                ProductDetailsAip == null
                    ? CircularProgressIndicator()
                    : SizedBox(
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
            ProductDetailsAip == null
                ? CircularProgressIndicator()
                : InkWell(
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
