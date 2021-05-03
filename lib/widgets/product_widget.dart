import 'package:flutter/material.dart';
import 'package:instabuy_app/core/core.dart';
import 'package:instabuy_app/views/product_dialog/product_dialog_page.dart';

class ProductWidget extends StatelessWidget {
  final String image;
  final String oldPrice;
  final String price;
  final String name;
  final dynamic product;

  const ProductWidget(
      {@required this.image,
      @required this.price,
      @required this.name,
      @required this.product,
      this.oldPrice});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.35,
      margin: EdgeInsets.only(top: size.height * 0.02),
      decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.black.withOpacity(0.15),
          ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                blurRadius: 4,
                color: AppColors.black.withOpacity(0.25),
                spreadRadius: 0,
                offset: Offset(0, 4))
          ],
          borderRadius: BorderRadius.circular(10)),
      child: MaterialButton(
        padding: EdgeInsets.all(0),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Container(
                  child: Container(
                      width: size.width * 0.2,
                      height: size.height * 0.1,
                      padding: EdgeInsets.only(top: 5),
                      child: Image.network(
                        'https://assets.instabuy.com.br/ib.item.image.small/s-$image',
                        fit: BoxFit.fill,
                      ))),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              child: Text(
                name,
                style: AppTextStyles.promoTitle,
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: size.height * 0.01),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(
                        "R\$ $price",
                        style: AppTextStyles.promoPrice,
                      ),
                      oldPrice != null
                          ? Padding(
                              padding: EdgeInsets.only(left: 5, top: 2),
                              child: Text(
                                "R\$ $oldPrice",
                                style: AppTextStyles.oldPrice,
                              ),
                            )
                          : Container()
                    ],
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.control_point,
                        color: AppColors.mainOrange,
                      ),
                      iconSize: 15,
                      padding: EdgeInsets.all(0),
                      constraints: BoxConstraints(maxHeight: 15, maxWidth: 15),
                      onPressed: () {})
                ],
              ),
            )
          ],
        ),
        splashColor: AppColors.mainOrange.withOpacity(0.2),
        onPressed: () {
          showDialog(
              context: context,
              builder: (_) => ProductDialog(
                    image: image,
                    title: name,
                    price: price,
                    product: product,
                  ));
        },
      ),
    );
  }
}
