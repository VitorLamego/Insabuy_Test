import 'package:flutter/material.dart';
import 'package:instabuy_app/core/app_globals.dart';
import 'package:instabuy_app/core/core.dart';

class AppBarContainer extends StatelessWidget {
  final String username;

  const AppBarContainer({@required this.username});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(children: [
      Container(
        height: size.height * 0.17,
        decoration: BoxDecoration(
            gradient: AppColors.linearGradient,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.06, vertical: size.height * 0.05),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text.rich(
                TextSpan(
                  text: "Olá, ",
                  style: AppTextStyles.welcomeRegular,
                  children: [
                    TextSpan(
                        text: '$username !', style: AppTextStyles.welcomeBold),
                  ],
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  color: AppColors.white,
                ),
                onPressed: () {},
                padding: EdgeInsets.only(bottom: size.height * 0.025),
              )
            ],
          ),
        ),
      ),
      amountCart != 0
          ? Align(
              alignment: Alignment.topRight,
              child: Container(
                margin: EdgeInsets.only(
                    top: size.height * 0.045, right: size.width * 0.07),
                height: size.height * 0.02,
                width: size.height * 0.02,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                ),
                child: Center(
                    child: Text(
                  amountCart.toString(),
                  style: TextStyle(
                      color: AppColors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                )),
              ),
            )
          : Container()
    ]);
  }
}
