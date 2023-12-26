import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_beginner_class/23_12_26/class/frist_screen.dart';
import 'package:flutter_beginner_class/23_12_26/class/model/studuent_model.dart';
import 'package:flutter_beginner_class/23_12_26/class/student_info.dart';
import 'package:go_router/go_router.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}



// GoRouter configuration
final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const fristScreen(student: Student(name: '홍길동', grade: 1, classRoom: 'A반')),
    ),
    GoRoute(
      path: '/last',
      builder: (context, state) {
        // jsonString 으로 넘겨 받는 방식
        final student =
        Student.fromJson(jsonDecode(state.uri.queryParameters['학생']!));

        // Object로 넘겨 받는 방식
        // final person = state.extra! as Person;

        return studentInfoScreen(student: student);
      },
    ),
  ],
);