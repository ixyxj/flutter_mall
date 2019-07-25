///
/// home data model
///
///
import 'package:meta/meta.dart';

class Product {
  final double id, price;
  final String imageUrl, thumbnailUrl, name, detail;

  Product(
      {this.id,
      this.imageUrl,
      this.thumbnailUrl,
      this.name,
      this.detail,
      this.price});
}

class ShoppingCart {
  final int num;
  final bool selected;
  final Product product;

  ShoppingCart({this.num = 1, this.selected = false, @required this.product});
}
