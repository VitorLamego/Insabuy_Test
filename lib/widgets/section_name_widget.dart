import 'package:flutter/material.dart';
import 'package:instabuy_app/core/core.dart';

class SectionNameWidget extends StatelessWidget {
  final String title;
  final double marginTop;

  const SectionNameWidget({@required this.title, @required this.marginTop});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: this.marginTop),
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.06),
      child: Text(
        this.title,
        style: AppTextStyles.orangeTitle,
      ),
    );
  }
}
