import 'package:flutter/material.dart';
import '../widgets/buildProductCard.dart';
import 'home_controller.dart';
import '../../data/models/Product.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeController controller = HomeController();

  bool isLoading = true;
  String? errorMessage;

  @override
  void initState() {
    super.initState();
    loadProducts();
  }

  Future<void> loadProducts() async {
    try {
      await controller.fetchProducts();
      setState(() {
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        isLoading = false;
        errorMessage = e.toString();
      });
    }
  }

  /// Common AppBar
  AppBar _buildAppBar() {
    return AppBar(
      title: Text("Products"),
      centerTitle: true,
      actions: [
        IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: () {
            // TODO: Navigate to Cart Screen
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("Go to Cart")),
            );
          },
        ),
        IconButton(
          icon: Icon(Icons.notifications_active),
          onPressed: () {
            // TODO: Navigate to Notifications
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("Notifications clicked")),
            );
          },
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return Scaffold(
        appBar: _buildAppBar(),
        body: Center(child: CircularProgressIndicator()),
      );
    }

    if (errorMessage != null) {
      return Scaffold(
        appBar: _buildAppBar(),
        body: Center(child: Text("Error: $errorMessage")),
      );
    }

    final products = controller.productList.products;

    return Scaffold(
      appBar: _buildAppBar(),
      body: LayoutBuilder(
        builder: (context, constraints) {
          int crossAxisCount = 2;
          if (constraints.maxWidth > 600) crossAxisCount = 3;
          if (constraints.maxWidth > 900) crossAxisCount = 4;

          return GridView.builder(
            padding: EdgeInsets.all(10),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 0.65,
            ),
            itemCount: products.length,
            itemBuilder: (context, index) {
              Product product = products[index];
              return ProductCard(product: product); // Reusable widget
            },
          );
        },
      ),
    );
  }
}
