import 'package:flutter/material.dart';
import 'package:instabuy_app/widgets/product_widget.dart';
import 'package:intl/intl.dart';

class CategoryService {
  static List<Widget> fillProducts(List<dynamic> items) {
    List<Widget> rows = [];
    NumberFormat f = NumberFormat("##0.00");
    f.significantDigits = 4;

    for (int i = 0; i < items.length; i += 2) {
      rows.add(Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ProductWidget(
            image: items[i]['images'][0],
            price: f
                .format(items[i]['prices'][0]['price'])
                .toString()
                .replaceAll('.', ','),
            name: items[i]['name'],
            product: items[i],
          ),
          ProductWidget(
            image: items[i + 1]['images'][0],
            price: f
                .format(items[i + 1]['prices'][0]['price'])
                .toString()
                .replaceAll('.', ','),
            name: items[i + 1]['name'],
            product: items[i + 1],
          )
        ],
      ));
    }
    return rows;
  }
}
