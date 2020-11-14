import 'dart:ui';

import 'package:fitness_app/r.g.dart';
import 'package:fitness_app/ui/theme/styles.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

ThemeData appTheme() {
  final base = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.accent,
    accentColor: AppColors.primary,
    fontFamily: R.fontFamily.louisGeorgeCafe,
    scaffoldBackgroundColor: AppColors.background,
  );

  return base.copyWith(
      appBarTheme: base.appBarTheme.copyWith(
        centerTitle: false,
        color: Colors.transparent,
        elevation: 0.0,
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(45.0),
            ),
            textStyle: AppStyles.outlinedButton,
            backgroundColor: Colors.white30,
            primary: Colors.white),
      ));
}
