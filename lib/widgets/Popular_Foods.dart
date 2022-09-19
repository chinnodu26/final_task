import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:final_task/home_Screens/product_details.dart';

class Popular_Foods extends StatelessWidget {
  const Popular_Foods(
      {required this.list1_title,
      required this.list1_prise,
      required this.list1_images});
  final String list1_title;
  final String list1_prise;
  final String list1_images;

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
                  child: Text(list1_title,
                      style: GoogleFonts.inter(
                          decoration: TextDecoration.none,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff121212))),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return product_page();
                  }));
                },
              ),
              InkWell(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(list1_prise,
                      style: GoogleFonts.inter(
                          decoration: TextDecoration.none,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff121212))),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return product_page();
                  }));
                },
              ),
              SizedBox(
                height: 9,
              ),
              Center(
                child: InkWell(
                  child: Image.asset(
                    list1_images,
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
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: InkWell(
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
                            onTap: () {},
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
            ]),
          ),
        ],
      ),
    ]);
  }
}
