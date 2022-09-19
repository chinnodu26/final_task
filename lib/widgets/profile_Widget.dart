import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile_Widget extends StatelessWidget {
  const Profile_Widget({
    required this.title,
    required this.images,
  });
  final String title;
  final String images;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: 36,
            ),
            FloatingActionButton(
              elevation: 1,
              onPressed: () {},
              backgroundColor: Color(0xffFFFFFF),
              child: Image.asset(
                images,
                width: 16,
                height: 16,
              ),
            ),
            SizedBox(
              width: 23,
            ),
            InkWell(
              child: Text(
                title,
                style: GoogleFonts.inter(
                  decoration: TextDecoration.none,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff1C1C1C),
                ),
              ),
              onTap: () {},
            ),
          ],
        ),
      ],
    );
  }
}
