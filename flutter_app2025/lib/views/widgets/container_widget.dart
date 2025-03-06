import 'package:flutter/material.dart';
import 'package:flutter_app2025/data/constants.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({
    super.key,
    required this.title,
    required this.description,
  });
  final String title;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(top: 20),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: MyTextStyles.titleTextStyle),
              Text(description, style: MyTextStyles.descriptionTextStyle),
            ],
          ),
        ),
      ),
    );
  }
}
