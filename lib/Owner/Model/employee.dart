import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee.freezed.dart';
part 'employee.g.dart';

@freezed
class Employee with _$Employee {
  const factory Employee({
    String? name,
    String? mobile,
    String? employeeId,
    dynamic warehouseId,
    DateTime? timestamp,
    List<String>? personType,
    int? isShow,
  }) = _Employee;

  factory Employee.fromJson(Map<String, Object?> json) =>
      _$EmployeeFromJson(json);
}
