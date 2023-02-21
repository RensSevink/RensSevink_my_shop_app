import 'package:flutter/material.dart';
import 'package:my_shop_app/models/product.dart';
import 'package:my_shop_app/components/product_item.dart';
import 'package:provider/provider.dart';
import 'package:my_shop_app/providers/products_provider.dart';

class ProductsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<ProductsProvider>(context);
    final products = productsData.items;

    
    return GridView.builder(
      itemCount: products.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, i) => ProductItem(
        id: products[i].id,
        title: products[i].title,
        description: products[i].description,
        imageUrl: products[i].imageUrl,
      ),
    );
  }
}
