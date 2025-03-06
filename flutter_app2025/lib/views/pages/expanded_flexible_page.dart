import 'package:flutter/material.dart';

class ExpandedFlexiblePage extends StatelessWidget {
  const ExpandedFlexiblePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(child: Container(color: Colors.teal)),
          Row(
            children: [
              Flexible(
                child: Container(
                  color: Colors.black,
                  height: 50,
                  child: Text("Hello"),
                ),
              ),
              Expanded(child: Container(color: Colors.red, height: 50)),
            ],
          ),
          Expanded(child: Container(color: Colors.orange)),
        ],
      ),
    );
  }
}
