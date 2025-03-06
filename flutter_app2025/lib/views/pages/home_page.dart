import 'package:flutter/material.dart';
import 'package:flutter_app2025/data/constants.dart';
import 'package:flutter_app2025/views/pages/course_page.dart';
import 'package:flutter_app2025/views/widgets/container_widget.dart';
import 'package:flutter_app2025/views/widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const List<String> appSections = [
      AppSections.ai,
      AppSections.cs,
      AppSections.sd,
      AppSections.md,
      AppSections.ml,
    ];
    // double screenWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return FractionallySizedBox(
              widthFactor: constraints.maxWidth > 500 ? 0.7 : 1.0,
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return CoursePage();
                          },
                        ),
                      );
                    },
                    child: HeroWidget(title: "Home"),
                  ),
                  ...List.generate(appSections.length, (index) {
                    return ContainerWidget(
                      title: appSections.elementAt(index),
                      description: "${appSections.elementAt(index)} is Cool!",
                    );
                  }),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
