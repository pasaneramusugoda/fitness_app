import 'package:fitness_app/r.g.dart';
import 'package:fitness_app/ui/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyles {
  static TextStyle bottomNavItemTextActive = TextStyle(
    fontFamily: R.fontFamily.louisGeorgeCafe,
    fontWeight: FontWeight.bold,
    color: AppColors.primary,
    fontSize: 13.sp,
  );
  static TextStyle bottomNavItemText = TextStyle(
    fontFamily: R.fontFamily.louisGeorgeCafe,
    fontWeight: FontWeight.normal,
    color: Colors.black45,
    fontSize: 13.sp,
  );
  static TextStyle appBarTitleWelcome = TextStyle(
    fontFamily: R.fontFamily.louisGeorgeCafe,
    fontWeight: FontWeight.w300,
    color: AppColors.textPrimaryLight,
    fontSize: 18.sp,
  );
  static TextStyle appBarTitle = TextStyle(
    fontFamily: R.fontFamily.louisGeorgeCafe,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimaryDark,
    fontSize: 26.sp,
  );
  static TextStyle workoutText = TextStyle(
    fontFamily: R.fontFamily.louisGeorgeCafe,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    fontSize: 22.sp,
  );
  static TextStyle workoutDes = TextStyle(
    fontFamily: R.fontFamily.louisGeorgeCafe,
    color: Colors.white,
    fontSize: 11.sp,
  );
  static TextStyle outlinedButton = TextStyle(
    fontFamily: R.fontFamily.louisGeorgeCafe,
    color: Colors.white,
    fontSize: 14,
  );
  static TextStyle activityLabel = TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    letterSpacing: 1.5,
    fontWeight: FontWeight.w300,
    color: Colors.black,
    fontSize: 12.sp,
  );
  static TextStyle activityValue = TextStyle(
    fontFamily: R.fontFamily.louisGeorgeCafe,
    fontWeight: FontWeight.bold,
    color: AppColors.primary,
    fontSize: 24.sp,
  );
  static TextStyle sectionHeading = TextStyle(
    fontFamily: R.fontFamily.louisGeorgeCafe,
    fontWeight: FontWeight.bold,
    color: Colors.black,
    fontSize: 16.sp,
  );
  static TextStyle sectionButton = TextStyle(
    fontFamily: R.fontFamily.louisGeorgeCafe,
    color: AppColors.textSectionButton,
    fontSize: 16.sp,
  );
}
