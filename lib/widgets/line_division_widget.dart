import 'package:flutter/material.dart';
import 'package:instabuy_app/core/core.dart';

class LineDivisionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.06),
      child: Container(
        height: 1,
        color: AppColors.mainOrange,
      ),
    );
  }
}
