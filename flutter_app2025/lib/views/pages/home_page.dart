import 'package:flutter/material.dart';
import 'package:flutter_app2025/data/constants.dart';
import 'package:flutter_app2025/views/widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          HeroWidget(title: "Home"),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Title", style: MyTextStyles.titleTextStyle),
                    Text(
                      "Description",
                      style: MyTextStyles.descriptionTextStyle,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
