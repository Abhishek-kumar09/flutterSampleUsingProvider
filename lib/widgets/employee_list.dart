import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../data/emplyee_data.dart';
import 'user_tiles.dart';

class EmployeeList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<EmployeeData>(builder: (context, employeeData, index) {
      return ListView.builder(
        itemBuilder: (context, index) {
          final employee = employeeData.employees[index];
          return UserTile(
            id: employee.id,
            name: employee.userName,
            salary: employee.salary,
            thumbsUpCallback: () {
              employeeData.increaseSalary(employee);
            },
            thumbsDowmCallback: () {
              employeeData.decreaseSalary(employee);
            },
          );
        },
        itemCount: employeeData.count,
      );
    });
  }
}
