import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_app2025/data/classes/employee_class.dart';
import 'package:flutter_app2025/views/widgets/hero_widget.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;

class CoursePage extends StatefulWidget {
  const CoursePage({super.key});

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  @override
  void initState() {
    getData();
    super.initState();
  }

  late Employee myEmp;
  void getData() async {
    final response = await http.get(
      Uri.parse('https://boringapi.com/api/v1/employees/123'),
    );

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      myEmp = Employee.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
      log(myEmp.firstName);
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load the employee');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(children: [HeroWidget(title: "Course")]),
        ),
      ),
    );
  }
}
