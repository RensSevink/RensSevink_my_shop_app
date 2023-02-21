import 'package:my_shop_app/models/product.dart';
import 'package:flutter/material.dart';

class ProductsProvider with ChangeNotifier {
  List<Product> _items = [
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

  List<Product> get items {
    return _items;
  }

  void addProduct(value) {
    // _items.add(value);
    notifyListeners();
  }

  Product findById(String id) {
    return items.firstWhere(
      (product) => product.id == id,
    );
  }
}
