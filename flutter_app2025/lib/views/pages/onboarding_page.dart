import 'package:flutter/material.dart';
import 'package:flutter_app2025/data/constants.dart';
import 'package:flutter_app2025/views/pages/login_page.dart';
import 'package:lottie/lottie.dart';

class OnBoardinPage extends StatelessWidget {
  const OnBoardinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Lottie.asset(
                  "assets/lotties/hi.json",
                  delegates: LottieDelegates(
                    values: [
                      ValueDelegate.color(
                        const [
                          '**',
                        ], // Target all layers (or specify exact layer names)
                        value: Colors.teal, // Change color to teal
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Jimmy App is Here",
                  style: MyTextStyles.descriptionTextStyle,
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 20),
                FilledButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return LoginPage(title: "Sign Up");
                        },
                      ),
                    );
                  },
                  style: FilledButton.styleFrom(
                    minimumSize: Size(double.infinity, 50),
                  ),
                  child: Text("Next", style: TextStyle(fontSize: 18)),
                ),
                SizedBox(height: 150),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
