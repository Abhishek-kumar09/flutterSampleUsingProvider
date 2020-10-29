import 'package:flutter/material.dart';
import '../widgets/employee_list.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Application Employee Header",
            style: TextStyle(color: Colors.green),
          ),
          backgroundColor: Colors.amber[900],
        ),
      
        body: EmployeeList());
  }
}
