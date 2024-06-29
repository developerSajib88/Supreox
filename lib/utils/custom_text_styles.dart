import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supreox/utils/color_palates.dart';

class CustomTextStyles {

  static TextStyle primaryTextStyles = GoogleFonts.dmSans(
    fontSize: 8.sp,
    color: Colors.black,
    fontWeight: FontWeight.w400
  );

  static TextStyle primaryTextStylesBold = GoogleFonts.dmSans(
    fontSize: 8.sp,
    color: ColorPalates.secondaryColor,
    fontWeight: FontWeight.w600
  );

  static TextStyle titleTextStyles = GoogleFonts.dmSans(
    fontSize: 10.sp,
    color: ColorPalates.secondaryColor,
    fontWeight: FontWeight.bold
  );


  static TextStyle descriptionTextStyles = GoogleFonts.dmSans(
      fontSize: 6.sp,
      color: ColorPalates.secondaryColor,
      fontWeight : FontWeight.normal
  );


  static TextStyle buttonTextStyles = GoogleFonts.dmSans(
      fontSize: 8.sp,
      color: ColorPalates.defaultWhite,
      fontWeight: FontWeight.bold
  );


}
