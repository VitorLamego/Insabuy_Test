import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:instabuy_app/core/core.dart';

class LoadPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: AppColors.white,
        child: SpinKitRing(color: AppColors.mainOrange));
  }
}
