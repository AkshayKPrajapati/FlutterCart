import 'package:flutter/material.dart';
import 'package:fluttercart/presentation/screens/main_screen.dart';
import 'dart:async';

import 'home_screen.dart';

class SplashController {
  final AnimationController animationController;

  SplashController({required this.animationController});

  void startAnimation() {
    animationController.forward();
  }

  void navigateToHome(BuildContext context) {
    // Navigate to HomeScreen after 3 seconds
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => MainScreen()),
      );
    });
  }
}
