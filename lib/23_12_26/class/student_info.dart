import 'package:flutter/material.dart';
import 'package:flutter_beginner_class/23_12_26/class/model/studuent_model.dart';

class studentInfoScreen extends StatelessWidget {
  final Student student;


  const studentInfoScreen({
    super.key, required this.student,

  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('lastScreen'),
      ),
      body: Center(
        child: Text(student.toString()),
      ),
    );
  }
}
class Student {
  final String name;
  final int grade;
  final String classRoom;

//<editor-fold desc="Data Methods">
  const Student({
    required this.name,
    required this.grade,
    required this.classRoom,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          (other is Student &&
              runtimeType == other.runtimeType &&
              name == other.name &&
              grade == other.grade &&
              classRoom == other.classRoom);

  @override
  int get hashCode => name.hashCode ^ grade.hashCode ^ classRoom.hashCode;

  @override
  String toString() {
    return 'Student{' +
        ' name: $name,' +
        ' grade: $grade,' +
        ' classRoom: $classRoom,' +
        '}';
  }

  Student copyWith({
    String? name,
    int? grade,
    String? classRoom,
  }) {
    return Student(
      name: name ?? this.name,
      grade: grade ?? this.grade,
      classRoom: classRoom ?? this.classRoom,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': this.name,
      'grade': this.grade,
      'classRoom': this.classRoom,
    };
  }

  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
      name: json['name'] as String,
      grade: json['grade'] as int,
      classRoom: json['classRoom'] as String,
    );
  }

//</editor-fold>
}