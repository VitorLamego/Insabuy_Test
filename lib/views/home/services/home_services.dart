import 'package:flutter/material.dart';
import 'package:instabuy_app/data/api_data.dart';
import 'package:instabuy_app/widgets/product_widget.dart';
import 'package:intl/intl.dart';

class HomeService {
  static List<Widget> fillOffers(Size size) {
    List<Widget> rows = [];
    NumberFormat f = NumberFormat("##0.00");

    for (int i = 0; i < ApiData.promotions.length; i += 2) {
      rows.add(Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ProductWidget(
            image: ApiData.promotions[i]['images'][0],
            oldPrice: f
                .format(ApiData.promotions[i]['prices'][0]['price'])
                .toString()
                .replaceAll('.', ','),
            price: f
                .format(ApiData.promotions[i]['prices'][0]['promo_price'])
                .toString()
                .replaceAll('.', ','),
            name: ApiData.promotions[i]['name'],
            product: ApiData.promotions[i],
          ),
          ProductWidget(
            image: ApiData.promotions[i + 1]['images'][0],
            oldPrice: ApiData.promotions[i + 1]['prices'][0]['price']
                .toString()
                .replaceAll('.', ','),
            price: ApiData.promotions[i + 1]['prices'][0]['promo_price']
                .toString()
                .replaceAll('.', ','),
            name: ApiData.promotions[i + 1]['name'],
            product: ApiData.promotions[i + 1],
          )
        ],
      ));
    }
    return rows;
  }
}
