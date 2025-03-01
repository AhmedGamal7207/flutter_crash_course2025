import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key, required this.title});
  final String title;
  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  TextEditingController controller = TextEditingController();
  bool? isChecked = false;
  bool isSwitched = false;
  double sliderValue = 50;
  String? menuValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),

      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      duration: Duration(seconds: 3),
                      behavior: SnackBarBehavior.floating,
                      content: Text("Hello Jimmy"),
                    ),
                  );
                },
                child: Text("Show Snackbar"),
              ),
              Divider(
                color: Colors.teal,
                thickness: 5,
                endIndent: 100,
                indent: 100,
                height: 50, // height makes padding
              ),
              SizedBox(
                height: 30,
                child: VerticalDivider(thickness: 5, color: Colors.teal),
              ),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Alert Title"),
                        content: Text("This is an Alert!!"),
                        actions: [
                          CloseButton(),
                          FilledButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text("Close"),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text("Show Alert"),
              ),
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
      ),
    );
  }
}
