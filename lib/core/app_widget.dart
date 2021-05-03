import 'package:flutter/material.dart';
import 'package:instabuy_app/views/home/home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'InstaBuy_App',
      home: HomePage(),
    );
  }
}
