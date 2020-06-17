import 'package:flutter/foundation.dart';
import 'dart:collection';
import '../model/employee_model.dart';

class EmployeeData extends ChangeNotifier {
  List<Employee> _employee = [
    Employee(id: 1, userName: "Employee One", salary: 15000),
    Employee(id: 2, userName: "Employee Two", salary: 15000),
    Employee(id: 3, userName: "Employee Three", salary: 15000),
    Employee(id: 4, userName: "Employee Four", salary: 15000),
    Employee(id: 5, userName: "Employee Five", salary: 15000),
  ];

  UnmodifiableListView<Employee> get employees {
    return UnmodifiableListView(_employee);
  }

  int get count {
    return _employee.length;
  }

  void increaseSalary(Employee empl) {
    double newSalary = empl.salary * 1.2;
    empl.salary = newSalary;
    notifyListeners();
  }

  void decreaseSalary(Employee empl) {
    empl.salary = 0.9 * empl.salary;
    notifyListeners();
  }
}
