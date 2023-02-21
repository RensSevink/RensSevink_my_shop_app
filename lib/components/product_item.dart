import 'package:flutter/material.dart';
import '../pages/product_detail_page.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final String description;

  const ProductItem({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.description,
  });

  get color => null;

  @override
  Widget build(BuildContext context) {
    return GridTile(
      footer: GridTileBar(
        title: Text(
          title,
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.black54,
        leading: IconButton(
          icon: const Icon(Icons.favorite),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: const Text('Added to favorites!'),
              ),
            );
          },
        ),
        trailing: IconButton(
          icon: const Icon(Icons.shopping_cart),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              // ignore: prefer_const_constructors
              SnackBar(
                content: const Text('Added to shoppingcart'),
              ),
            );
          },
        ),
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context)
              .pushNamed(ProductDetailPage.routeName, arguments: id);
        },
        child: Tooltip(
          message: description,
          child: Image.network(imageUrl, fit: BoxFit.cover),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 0, 97, 3),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
      // child: Stack(
      //   children: [
      //     Flexible(
      //       flex: 1,
      //       child: Image.network(
      //         imageUrl,
      //         fit: BoxFit.cover,
      //       ),
      //     ),
      //     DropdownButton(
      //       items: const [
      //         DropdownMenuItem(
      //           child: Text('Kiryu'),
      //           value: "Yakuza",
      //         ),
      //         DropdownMenuItem(
      //           child: Text('Majima'),
      //           value: "Yakuza",
      //         ),
      //         DropdownMenuItem(
      //           child: Text('Ichiban'),
      //           value: "Yakuza",
      //         ),
      //         DropdownMenuItem(
      //           child: Text('Nishikiyama'),
      //           value: "Yakuza",
      //         ),
      //       ],
      //       onChanged: (String? value) {},
      //     ),
      //   ],
      // ),
    );
  }
}
