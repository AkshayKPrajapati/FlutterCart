import 'package:flutter/material.dart';
import 'package:fluttercart/data/models/Product.dart';
import '../controller/product_controller.dart';


class ProductScreen extends StatefulWidget {
  final Product product;

  const ProductScreen({Key? key, required this.product}) : super(key: key);

  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  late ProductController controller;

  @override
  void initState() {
    super.initState();
    controller = ProductController(product: widget.product);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.getProductTitle()),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Product ID: ${controller.product.id}",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            Text(
              "Title: ${controller.getProductTitle()}",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              "Price: ₹${controller.getProductPrice().toStringAsFixed(2)}",
              style: TextStyle(fontSize: 16, color: Colors.green),
            ),
            SizedBox(height: 12),
            Image.network(
              controller.product.thumbnail ?? "",
              height: 200,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
