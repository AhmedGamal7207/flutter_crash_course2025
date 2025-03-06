import 'package:flutter/material.dart';
import 'package:flutter_app2025/data/constants.dart';
import 'package:flutter_app2025/data/notifiers.dart';
import 'package:flutter_app2025/views/pages/home_page.dart';
import 'package:flutter_app2025/views/pages/profile_page.dart';
import 'package:flutter_app2025/views/pages/settings_page.dart';
import 'package:flutter_app2025/views/widgets/navbar_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

List<Widget> pages = [HomePage(), ProfilePage()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jimmy App"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () async {
              final SharedPreferences prefs =
                  await SharedPreferences.getInstance();
              isDarkModeNotifier.value = !isDarkModeNotifier.value;
              await prefs.setBool(
                KeyConstants.isDarkKey,
                isDarkModeNotifier.value,
              );
            },
            icon: ValueListenableBuilder(
              valueListenable: isDarkModeNotifier,
              builder: (context, isDarkMode, child) {
                return isDarkMode
                    ? Icon(Icons.light_mode)
                    : Icon(Icons.dark_mode);
              },
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SettingsPage(title: "Settings Jimmy");
                  },
                ),
              );
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      bottomNavigationBar: NavBarWidget(),
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, selectedPageIndex, child) {
          return pages.elementAt(selectedPageIndex);
        },
      ),
    );
  }
}
