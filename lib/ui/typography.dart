import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutterapp/assets/colors/colors.dart';

String inter = 'Inter';
String integral = 'Integral CF';

class CustomTextStyles {
  // Main Styles

  static TextStyle h1 = TextStyle(
    fontFamily: integral,
    fontSize: 26.sp,
    fontWeight: FontWeight.w700,
    color: CustomColors.darkPurple,
  );

  static TextStyle h1White = TextStyle(
    fontFamily: integral,
    fontSize: 26.sp,
    fontWeight: FontWeight.w700,
    color: CustomColors.white,
  );

  static TextStyle h2 = TextStyle(
    fontFamily: integral,
    fontSize: 22.sp,
    fontWeight: FontWeight.w700,
    color: CustomColors.white,
  );

  static TextStyle mainSub = TextStyle(
    fontFamily: inter,
    fontSize:18.sp,
    fontWeight: FontWeight.w500,
    color: CustomColors.darkPurple,
  );

  static TextStyle placeholder = TextStyle(
    fontFamily: inter,
    fontSize: 18.sp,
    fontWeight: FontWeight.w500,
    color: CustomColors.darkGray,
  );

  static TextStyle underText = TextStyle(
    fontFamily: inter,
    fontSize: 12.sp,
    fontWeight: FontWeight.w700,
    color: CustomColors.darkerGray,
  );

  static TextStyle underTextPurple = TextStyle(
    fontFamily: inter,
    fontSize: 12.sp,
    fontWeight: FontWeight.w700,
    color: CustomColors.purple,
  );

  // onBoarding Styles
  static TextStyle onBoardingH = TextStyle(
    fontFamily: integral,
    fontSize: 30.sp,
    fontWeight: FontWeight.w700,
    color: CustomColors.white,
  );

  static TextStyle onBoardingHPink = TextStyle(
    fontFamily: integral,
    fontSize: 30.sp,
    fontWeight: FontWeight.w700,
    color: CustomColors.pink,
  );

  static TextStyle onBoardingHSub = TextStyle(
    fontFamily: integral,
    fontSize: 16.sp,
    fontWeight: FontWeight.w700,
    color: CustomColors.white,
  );

  static TextStyle onBoardingMain = TextStyle(
    fontFamily: inter,
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: CustomColors.white,
  );

  // onBoardingWindow Styles
  static TextStyle onBoardingWindowMain = TextStyle(
    fontFamily: inter,
    fontSize: 8.sp,
    fontWeight: FontWeight.w700,
    color: CustomColors.darkestGray,
  );

  static TextStyle onBoardingWindowSub = TextStyle(
    fontFamily: inter,
    fontSize: 7.sp,
    fontWeight: FontWeight.w500,
    color: CustomColors.darkestGray,
  );

  // home Styles
}
