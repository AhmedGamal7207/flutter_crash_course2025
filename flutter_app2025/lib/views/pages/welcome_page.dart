import 'package:flutter/material.dart';
import 'package:flutter_app2025/views/pages/login_page.dart';
import 'package:flutter_app2025/views/widget_tree.dart';
import 'package:flutter_app2025/views/widgets/hero_widget.dart';
import 'package:lottie/lottie.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Lottie.asset(
                'assets/lotties/welcome.json',
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(height: 10),
            FittedBox(
              child: Text(
                "Jimmy App",
                style: TextStyle(
                  fontSize: 50,
                  letterSpacing: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 50),
            FilledButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return WidgetTree();
                    },
                  ),
                );
              },
              style: FilledButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
              ),
              child: Text("Get Started", style: TextStyle(fontSize: 18)),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginPage();
                    },
                  ),
                );
              },
              style: TextButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
              ),
              child: Text("Login", style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}
