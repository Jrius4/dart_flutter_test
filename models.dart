import 'package:sqflite/sqflite.dart';
import 'package:moor/moor.dart';

class Employee {
  final int id;
  final String name;

  Employee({required this.id, required this.name});
}

class Employees extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
}

void updateEmployeeName(Database db, Employee employee) async {
  await db.update(
    'employees',
    {'name': employee.name},
    where: 'id = ?',
    whereArgs: [employee.id],
  );

  // You can also use the update ORM from the moor package
  final employeeDao = EmployeesDao(db);
  await employeeDao.updateEmployee(employee);
}

class EmployeesDao {
  final Database db;

  EmployeesDao(this.db);

  Future<void> updateEmployee(Employee employee) {
    return update(employees).replace(employee.toDataClass());
  }
}
