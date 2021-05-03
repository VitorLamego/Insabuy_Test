import 'package:flutter/material.dart';
import 'package:instabuy_app/core/app_globals.dart';
import 'package:instabuy_app/core/core.dart';
import 'package:instabuy_app/views/home/home_page.dart';
import 'package:instabuy_app/views/product_dialog/product_dialog_controller.dart';

class ProductDialog extends StatefulWidget {
  final String image;
  final String title;
  final String price;
  final dynamic product;

  const ProductDialog(
      {@required this.image,
      @required this.title,
      @required this.price,
      @required this.product,
      Key key})
      : super(key: key);

  @override
  _ProductDialogState createState() => _ProductDialogState();
}

class _ProductDialogState extends State<ProductDialog> {
  @override
  Widget build(BuildContext context) {
    ProductDialogController controller = ProductDialogController();
    Size size = MediaQuery.of(context).size;
    return StatefulBuilder(builder: (context, setState) {
      return Dialog(
        child: Container(
          height: size.height * 0.65,
          child: Stack(children: [
            Container(
              width: 85,
              height: 85,
              decoration: BoxDecoration(
                  color: AppColors.mainOrange.withOpacity(0.2),
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(100))),
              alignment: Alignment.topLeft,
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.05,
                      vertical: size.height * 0.05),
                  child: Text(
                    widget.title,
                    style: AppTextStyles.dialogTitle,
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: size.height * 0.06),
                  child: Image.network(
                    'https://assets.instabuy.com.br/ib.item.image.small/s-${widget.image}',
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text(
                    "R\$ ${widget.price}",
                    style: AppTextStyles.orangeTitle,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          IconButton(
                              icon: Icon(Icons.remove_circle_outline),
                              padding: EdgeInsets.all(0),
                              iconSize: 20,
                              color: AppColors.mainOrange,
                              onPressed: () {
                                if (controller.amount != 0)
                                  controller.setAmount(controller.amount - 1);
                                setState(() {});
                              }),
                          Container(
                            width: size.width * 0.1,
                            height: size.height * 0.04,
                            child: Center(
                                child: Text(controller.amount.toString())),
                            decoration: BoxDecoration(
                              border: Border.all(color: AppColors.black),
                            ),
                          ),
                          IconButton(
                              icon: Icon(Icons.add_circle_outline),
                              padding: EdgeInsets.all(0),
                              iconSize: 20,
                              color: AppColors.mainOrange,
                              onPressed: () {
                                controller.setAmount(controller.amount + 1);
                                setState(() {});
                              }),
                        ],
                      ),
                      MaterialButton(
                        child: Container(
                          width: size.width * 0.3,
                          height: size.height * 0.04,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColors.mainOrange,
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 4,
                                    spreadRadius: 0,
                                    offset: Offset(0, 4),
                                    color:
                                        AppColors.mainOrange.withOpacity(0.2))
                              ]),
                          child: Center(
                            child: Text(
                              "Adicionar!",
                              style: AppTextStyles.confirmStyle,
                            ),
                          ),
                        ),
                        onPressed: () {
                          if (controller.amount != 0) {
                            Map item = {
                              "name": widget.product['name'],
                              "qntd": controller.amount
                            };
                            addItem(item);
                            double value;
                            if (widget.product['prices'][0]['promo_price'] ==
                                null)
                              value = widget.product['prices'][0]['price'] *
                                  controller.amount;
                            else
                              value = widget.product['prices'][0]
                                      ['promo_price'] *
                                  controller.amount;
                            setCartValue(value);
                            setState(() {});
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return HomePage();
                            }));
                          }
                        },
                      )
                    ],
                  ),
                )
              ],
            ),
          ]),
        ),
      );
    });
  }
}
