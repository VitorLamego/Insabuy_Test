import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:instabuy_app/data/api_data.dart';

class CarouselWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.06),
      child: CarouselSlider(
        options: CarouselOptions(
            initialPage: 0,
            autoPlay: true,
            enableInfiniteScroll: true,
            viewportFraction: 1.0,
            autoPlayInterval: Duration(seconds: 5)),
        items: ApiData.banners
            .map(
              (e) => Container(
                margin: EdgeInsets.only(top: size.height * 0.12),
                height: size.height * 0.16,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: NetworkImage(
                        'https://assets.instabuy.com.br/ib.store.banner/bnr-${e['image']}',
                      ),
                      fit: BoxFit.fill),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
