import 'package:flutter/material.dart';
import 'package:my_shop_app/pages/products_overview_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rens Shop',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: ProductOverviewPage(),
    );
  }
}
