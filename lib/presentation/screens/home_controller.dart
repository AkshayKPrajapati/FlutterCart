import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../data/models/ProductList.dart';

class HomeController {
  late ProductList productList;

  // App info
  String appName = "UrbanShop";
  String sloganValue = "Best Products, Best Prices";
  String developer = "Developed by: Akshay Kumar Prajapati";
  String company = "Company: Neha Solution pvt ltd";
  String year = "2025";

  /// Fetch products from API
  Future<void> fetchProducts() async {
    final url = Uri.parse("https://dummyjson.com/products");
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      productList = ProductList.fromJson(data);
    } else {
      throw Exception("Failed to load products");
    }
  }
}
