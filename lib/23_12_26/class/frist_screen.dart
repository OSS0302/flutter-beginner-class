import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_beginner_class/23_12_26/class/student_info.dart';
import 'package:go_router/go_router.dart';

class fristScreen extends StatelessWidget {
  final Student student;
  const fristScreen({super.key, required this.student});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Go Router 첫 화면'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            const student = Student(name: '홍길동', grade: 1, classRoom: 'A번');

            context.push(
              Uri(
                path: '/last',
                queryParameters: { '학생': jsonEncode(student.toJson()) },
              ).toString(),
            );
          },
          child: const Text('이동'),
        ),
      ),
    );
  }
}
