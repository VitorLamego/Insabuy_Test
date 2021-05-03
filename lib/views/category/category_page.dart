import 'package:flutter/material.dart';
import 'package:instabuy_app/core/core.dart';
import 'package:instabuy_app/views/category/services/category_services.dart';
import 'package:instabuy_app/views/category/widgets/nav_picture_widget.dart';
import 'package:instabuy_app/widgets/line_division_widget.dart';
import 'package:instabuy_app/widgets/section_name_widget.dart';

class CategoryPage extends StatelessWidget {
  final String image;
  final String name;
  final dynamic category;

  const CategoryPage(
      {@required this.image, @required this.category, @required this.name});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NavPictureWidget(name: name, image: image),
            SectionNameWidget(title: 'Produtos', marginTop: size.height * 0.05),
            LineDivisionWidget(),
            Container(
              margin: EdgeInsets.only(bottom: size.height * 0.05),
              child: Column(
                children: CategoryService.fillProducts(category['items']),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
