import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:my_shop_app/providers/products_provider.dart';

class ProductDetailPage extends StatelessWidget {
  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)?.settings.arguments as String;
    final loadedProduct = Provider.of<ProductsProvider>(context, listen: false)
        .findById(productId);
    return Scaffold(
      appBar: AppBar(
        title: Text(loadedProduct.title),
      ),
      body: Center(
        child: Text(loadedProduct.description),
      ),
    );
  }
}
