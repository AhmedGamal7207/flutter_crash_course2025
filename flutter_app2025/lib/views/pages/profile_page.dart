import 'package:flutter/material.dart';
import 'package:flutter_app2025/data/notifiers.dart';
import 'package:flutter_app2025/views/pages/welcome_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/me.png"),
            radius: 70,
          ),
          ListTile(
            title: Text("Logout"),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return WelcomePage();
                  },
                ),
              );
              selectedPageNotifier.value = 0;
            },
          ),
        ],
      ),
    );
  }
}
