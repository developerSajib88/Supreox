import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supreox/utils/color_palates.dart';

class CustomTextStyles {

  static TextStyle primaryTextStyles = GoogleFonts.inter(
    fontSize: 8.sp,
    color: Colors.black,
    fontWeight: FontWeight.w400
  );


  static TextStyle titleTextStyles = GoogleFonts.inter(
    fontSize: 10.sp,
    color: ColorPalates.customBlack,
    fontWeight: FontWeight.bold
  );


  static TextStyle descriptionTextStyles = GoogleFonts.inter(
      fontSize: 6.sp,
      color: ColorPalates.greyColor,
      fontWeight : FontWeight.normal
  );


  static TextStyle buttonTextStyles = GoogleFonts.inter(
      fontSize: 8.sp,
      color: ColorPalates.defaultWhite,
      fontWeight: FontWeight.bold
  );


}
