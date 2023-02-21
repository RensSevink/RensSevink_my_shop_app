import 'package:flutter/material.dart';
import 'package:my_shop_app/components/products_grid.dart';

class ProductOverviewPage extends StatefulWidget {
  const ProductOverviewPage({super.key});

  @override
  State<ProductOverviewPage> createState() => _ProductOverviewPageState();
}

class _ProductOverviewPageState extends State<ProductOverviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyShop'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ProductsGrid(),
      ),
    );
  }
}
