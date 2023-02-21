import 'package:flutter/material.dart';
import 'package:my_shop_app/pages/products_overview_page.dart';
import 'package:my_shop_app/providers/products_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProductsProvider(),
      child: MaterialApp(
        title: 'Rens Shop',
        theme: ThemeData(
          primarySwatch: Colors.amber,
        ),
        home: ProductOverviewPage(),
      ),
    );
  }
}
