import 'package:flutter/material.dart';

/// Controller for MainScreen
class MainController {
  // Current selected index
  int currentIndex = 0;

  // Bottom navigation items
  final List<String> bottomItems = [
    "Home",
    "Profile",
    "Setting",
  ];

  // Change selected index
  void changeIndex(int index) {
    currentIndex = index;
  }
}
