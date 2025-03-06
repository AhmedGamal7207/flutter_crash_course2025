import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Hero(
          tag: "forest_hero",
          child: AspectRatio(
            aspectRatio: 1920 / 1080,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                "assets/images/login_bg.jpg",
                color: Colors.teal,
                colorBlendMode: BlendMode.darken,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        FittedBox(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 60,
              letterSpacing: 40,
              fontWeight: FontWeight.bold,
              color: Colors.white70,
            ),
          ),
        ),
      ],
    );
  }
}
