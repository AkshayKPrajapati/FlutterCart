import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttercart/presentation/screens/splash_screen.dart';


class LuncherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: SplashScreen(), // switched here
    );
  }
}