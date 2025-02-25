import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController controller = TextEditingController();
  bool? isChecked = false;
  bool isSwitched = false;
  double sliderValue = 50;
  String? menuValue;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onEditingComplete: () {
                setState(() {});
              },
            ),
            Text(controller.text),
            Checkbox(
              tristate: true,
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value;
                });
              },
            ),
            CheckboxListTile(
              title: Text("Click Me"),
              tristate: true,
              value: isChecked,
              onChanged: (value) {
                setState(() {
                  isChecked = value;
                });
              },
            ),
            Switch.adaptive(
              value: isSwitched,
              onChanged: (bool value) {
                isSwitched = value;
                setState(() {});
              },
            ),
            SwitchListTile(
              title: Text("Switch Me"),
              value: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = value;
                });
              },
            ),
            Slider(
              min: 50,
              max: 100,
              divisions: 100,
              value: sliderValue,
              onChanged: (value) {
                setState(() {
                  sliderValue = value;
                });
              },
            ),
            Text(sliderValue.toString()),
            SizedBox(height: 10),
            InkWell(
              splashColor: Colors.purple,
              child: Container(
                height: 50,
                width: double.infinity,
                color: Colors.white12,
              ),
              onDoubleTap: () {
                isSwitched = !isSwitched;
                setState(() {});
              },
            ),
            ElevatedButton(onPressed: () {}, child: Text("Click Me")),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                foregroundColor: Colors.white,
              ),
              child: Text("Click Me"),
            ),
            TextButton(onPressed: () {}, child: Text("Click Me")),
            FilledButton(onPressed: () {}, child: Text("Click Me")),
            OutlinedButton(onPressed: () {}, child: Text("Click Me")),
            CloseButton(),
            BackButton(),
            DropdownButton(
              hint: Text("Select one"),
              icon: Icon(Icons.menu),
              iconSize: 30,
              isExpanded: true,
              value: menuValue,
              items: [
                DropdownMenuItem(value: "E1", child: Text("Jimmy")),
                DropdownMenuItem(value: "E2", child: Text("Maya")),
              ],
              onChanged: (value) {
                setState(() {
                  menuValue = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
