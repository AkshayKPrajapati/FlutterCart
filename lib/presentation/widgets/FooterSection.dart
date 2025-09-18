import 'package:flutter/material.dart';
import '../../core/constants/strings.dart';
import '../screens/home_controller.dart';

class FooterSection extends StatelessWidget {
  final HomeController controller;

  const FooterSection({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue.shade600, Colors.blue.shade400],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      padding: EdgeInsets.symmetric(vertical: 25, horizontal: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // App Name
          Text(
            StringValue.appName,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white,
              letterSpacing: 1.2,
            ),
          ),
          SizedBox(height: 6),

          // Slogan
          Text(
            StringValue.sloganValue,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              fontStyle: FontStyle.italic,
              color: Colors.white70,
            ),
          ),
          SizedBox(height: 12),

          // Divider
          Divider(
            color: Colors.white38,
            thickness: 1,
            indent: 40,
            endIndent: 40,
          ),
          SizedBox(height: 12),

          // Developer Info
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.person, size: 16, color: Colors.white70),
              SizedBox(width: 6),
              Text(
                StringValue.developer,
                style: TextStyle(fontSize: 12, color: Colors.white70),
              ),
            ],
          ),
          SizedBox(height: 4),
          Text(
            StringValue.company,
            style: TextStyle(fontSize: 12, color: Colors.white70),
          ),
          Text(
            StringValue.year,
            style: TextStyle(fontSize: 12, color: Colors.white70),
          ),
        ],
      ),
    );
  }
}
