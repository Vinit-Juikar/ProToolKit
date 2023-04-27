import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:protoolkit/data/image_data.dart';
import 'package:protoolkit/data/text_home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

Widget HomeScreenCard(index) {
  return Card(
    child: Container(
      height: 200.h,
      width: 200.w,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            child: Container(
              height: 180.h,
              width: 200.w,
              child: Image.asset(
                HomeScreenImages[index],
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Text(
              HomeScreenText[index],
              style: GoogleFonts.nunito(
                textStyle: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
