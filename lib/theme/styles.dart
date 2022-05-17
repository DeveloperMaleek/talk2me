import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:talk2me/theme/colors.dart';

ThemeData appTheme() {
  return ThemeData(
    primaryColor: AppColors.primaryColor,
    // primarySwatch: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.lightBackground,
    primaryTextTheme: GoogleFonts.josefinSansTextTheme(),
    hintColor: Colors.white,
    textSelectionTheme:
        TextSelectionThemeData(cursorColor: AppColors.primaryColor),
  );
}
