import 'package:flutter/material.dart';

class AppColors {
  static final Color white = Colors.white;
  static final Color mainOrange = Color(0xffE15214);
  static final Color black = Colors.black;
  static final Color confirmGreen = Color(0xff21D428);
  static final linearGradient = LinearGradient(
    colors: [
      Color(0xFFE88F09),
      Color(0xFFEB6C50).withOpacity(0.15),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}
