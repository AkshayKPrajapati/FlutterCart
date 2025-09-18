import 'package:fluttercart/data/models/Product.dart';

class ProductController {
  final Product product;

  ProductController({required this.product});

  // Example method
  String getProductInfo() {
    return "Product info for ID ${product.id}";
  }

  String getProductTitle() {
    return product.title;
  }

  double getProductPrice() {
    return product.price*10;
  }

// Add more helper methods if needed
}
