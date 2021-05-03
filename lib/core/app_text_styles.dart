import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instabuy_app/core/app_colors.dart';

class AppTextStyles {
  static final TextStyle welcomeRegular = GoogleFonts.sourceSansPro(
    color: AppColors.white,
    fontSize: 20,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle welcomeBold = GoogleFonts.sourceSansPro(
    color: AppColors.white,
    fontSize: 20,
    fontWeight: FontWeight.w700,
  );

  static final TextStyle orangeTitle = GoogleFonts.sourceSansPro(
    color: AppColors.mainOrange,
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle promoTitle = GoogleFonts.sourceSansPro(
    color: AppColors.black,
    fontSize: 10,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle categoryTitle = GoogleFonts.sourceSansPro(
    color: AppColors.black,
    fontSize: 12,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle oldPrice = GoogleFonts.sourceSansPro(
    color: AppColors.black.withOpacity(0.25),
    fontSize: 10,
    decoration: TextDecoration.lineThrough,
  );

  static final TextStyle promoPrice = GoogleFonts.sourceSansPro(
    color: AppColors.mainOrange,
    fontSize: 13,
  );

  static final TextStyle dialogTitle = GoogleFonts.sourceSansPro(
    color: AppColors.black,
    fontSize: 20,
    fontWeight: FontWeight.w800,
  );

  static final TextStyle confirmStyle = GoogleFonts.sourceSansPro(
    color: AppColors.white,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle categoryPageTitle = GoogleFonts.sourceSansPro(
    color: AppColors.white,
    fontSize: 25,
    fontWeight: FontWeight.w900,
  );
}
