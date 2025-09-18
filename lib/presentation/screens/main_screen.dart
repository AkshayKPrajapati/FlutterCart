import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttercart/presentation/screens/home_screen.dart';

import 'main_controller.dart' show MainController;

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final MainController controller = MainController();

  final List<Widget> screens = [
    HomeScreen(),
    Center(child: Text("Profile Screen")),
    Center(child: Text("Setting Screen")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[controller.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: controller.currentIndex,
        onTap: (index) {
          setState(() {
            controller.changeIndex(index);
          });
        },
        items: controller.bottomItems.map((item) {
          IconData iconData;
          switch (item) {
            case "Home":
              iconData = Icons.home;
              break;
            case "Profile":
              iconData = Icons.person;
              break;
            case "Setting":
              iconData = Icons.settings;
              break;
            default:
              iconData = Icons.circle;
          }
          return BottomNavigationBarItem(
            icon: Icon(iconData),
            label: item,
          );
        }).toList(),
      ),
    );
  }
}