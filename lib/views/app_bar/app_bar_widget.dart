import 'package:flutter/material.dart';
import 'package:instabuy_app/views/app_bar/widgets/app_bar_container.dart';
import 'package:instabuy_app/views/app_bar/widgets/carousel_widget.dart';

class AppBarWidget extends PreferredSize {
  final Size size;

  AppBarWidget({this.size})
      : super(
            preferredSize: Size.fromHeight(size.height * 0.3),
            child: SafeArea(
              child: Stack(
                children: [
                  AppBarContainer(username: 'Carlos'),
                  CarouselWidget()
                ],
              ),
            ));
}
