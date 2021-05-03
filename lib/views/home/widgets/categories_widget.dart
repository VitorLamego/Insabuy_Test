import 'package:flutter/material.dart';
import 'package:instabuy_app/core/core.dart';
import 'package:instabuy_app/views/category/category_page.dart';
import 'package:instabuy_app/views/home/home_config.dart';

class CategoriesWidget extends StatelessWidget {
  final List<dynamic> categories;
  final _scrollController = new ScrollController();

  CategoriesWidget({@required this.categories, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView(
      scrollDirection: Axis.horizontal,
      controller: _scrollController,
      children: categories
          .map((element) => Container(
                width: size.width * 0.35,
                padding: EdgeInsets.only(top: size.height * 0.04),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return CategoryPage(
                          image: HomeConfig.images[element['title']],
                          category: element,
                          name: element['title']);
                    }));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          child: Material(
                            child: InkWell(
                                child: Image.asset(
                                    HomeConfig.images[element['title']],
                                    fit: BoxFit.fill,
                                    height: size.height * 0.13,
                                    width: size.height * 0.13)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          margin: EdgeInsets.only(top: 10),
                          width: size.height * 0.13,
                          child: Text(
                            element['title'],
                            style: AppTextStyles.categoryTitle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ))
          .toList(),
    );
  }
}
