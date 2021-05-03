import 'package:flutter/material.dart';
import 'package:instabuy_app/core/core.dart';

class NavPictureWidget extends StatelessWidget {
  final String name;
  final String image;

  const NavPictureWidget({@required this.name, @required this.image});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.2,
      width: size.width,
      decoration: BoxDecoration(
        color: AppColors.mainOrange.withOpacity(0.2),
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
        image: DecorationImage(
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.2), BlendMode.dstATop),
          image: AssetImage(image),
        ),
      ),
      child: Center(
          child: Text(
        name,
        style: AppTextStyles.categoryPageTitle,
      )),
    );
  }
}
