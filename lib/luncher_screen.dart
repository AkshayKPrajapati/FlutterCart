import 'package:flutter/material.dart';
import 'package:fluttercart/core/theme/DarkTheme.dart';
import 'package:fluttercart/presentation/screens/splash_screen.dart';


class LuncherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: DarkTheme.theme,
      debugShowCheckedModeBanner: false,
      home: SplashScreen(), // switched here
    );
  }
}