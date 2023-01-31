import 'package:flutter/material.dart';
import 'package:my_shop_app/models/product.dart';
import 'package:my_shop_app/components/product_item.dart';

class ProductOverviewPage extends StatefulWidget {
  const ProductOverviewPage({super.key});

  @override
  State<ProductOverviewPage> createState() => _ProductOverviewPageState();
}

class _ProductOverviewPageState extends State<ProductOverviewPage> {
  List<Product> loadedProducts = [
    Product(
      id: 'p1',
      title: 'Kiryu Shirt',
      description: 'A kiryu shirt - it is pretty rad!',
      price: 29.99,
      imageUrl:
          'https://ih1.redbubble.net/image.697683099.9991/ssrco,slim_fit_t_shirt,flatlay,fafafa:ca443f4786,front,wide_portrait,750x1000-bg,f8f8f8.jpg',
    ),
    Product(
      id: 'p2',
      title: 'Yakuza: Like a Dragon',
      description: 'A very cool game.',
      price: 59.99,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/en/2/2f/Yakuza_like_a_dragon_cover_art.jpg',
    ),
    Product(
      id: 'p3',
      title: 'Kiryu & Majima Figures',
      description: 'Calm and Chaotic - exactly what you need as a Yakuza fan.',
      price: 99.99,
      imageUrl:
          'https://yakuzafan.com/wp-content/uploads/2019/01/49432732_10155767140106968_2646769219588325376_o-1080x675.jpg',
    ),
    Product(
      id: 'p4',
      title: 'Majima Knife Replica',
      description: 'For the real Majima fans.',
      price: 49.99,
      imageUrl:
          'https://static.wikia.nocookie.net/yakuza/images/f/f9/Katana_003.png/revision/latest/scale-to-width-down/250?cb=20190627185032',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rens Yakuza Shop'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          itemCount: loadedProducts.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, i) => ProductItem(
            id: loadedProducts[i].id,
            title: loadedProducts[i].title,
            imageUrl: loadedProducts[i].imageUrl,
            description: loadedProducts[i].description,
          ),
        ),
      ),
    );
  }
}
