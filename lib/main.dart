import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_app/data/emplyee_data.dart';
import 'screen/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => EmployeeData(),
      child: MaterialApp(home: MyHomePage()),
    );
  }
}
