import 'package:flutter/material.dart';
import 'package:instabuy_app/views/app_bar/app_bar_widget.dart';
import 'package:instabuy_app/data/api_data.dart';
import 'package:instabuy_app/views/home/services/home_services.dart';
import 'package:instabuy_app/views/home/widgets/categories_widget.dart';
import 'package:instabuy_app/views/load/load_page.dart';
import 'package:instabuy_app/widgets/line_division_widget.dart';
import 'package:instabuy_app/widgets/section_name_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return FutureBuilder(
      future: ApiData.getData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done)
          return Scaffold(
            appBar: AppBarWidget(size: size),
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SectionNameWidget(
                      title: 'Categorias', marginTop: size.height * 0.06),
                  LineDivisionWidget(),
                  Container(
                    height: size.height * 0.28,
                    child: CategoriesWidget(categories: ApiData.categories),
                  ),
                  SectionNameWidget(
                      title: 'Ofertas', marginTop: size.height * 0.01),
                  LineDivisionWidget(),
                  Container(
                      margin: EdgeInsets.only(bottom: size.height * 0.03),
                      child: Column(children: HomeService.fillOffers(size)))
                ],
              ),
            ),
          );
        return LoadPage();
      },
    );
  }
}
