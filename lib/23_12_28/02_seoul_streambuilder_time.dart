import 'package:flutter/material.dart';
import 'package:flutter_beginner_class/00_repository/time_repository.dart';
import 'package:flutter_beginner_class/23_12_28/model/time.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SeoulTimeApp(),
    );
  }
}

class SeoulTimeApp extends StatelessWidget {
  final _repository = TimeRepository();

  SeoulTimeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StreamBuilder 방식'),
      ),
      body: StreamBuilder<Time>(
        stream: _repository.getTimeStream(),
        builder: (context, snapshot) {
          // 연결 상태 가  기달리면 멈춰라
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (!snapshot.hasData) {
            return const Center(
              child: Text('타임 데이터가 없다.'),
            );
          }

          final Time time = snapshot.data!;

          return Center(
            child: Column(
              children: [
                Text(
                  time.time,
                  style: const TextStyle(
                    fontSize: 30,
                  ),
                ),
                Text(
                  time.utcTime,
                  style: const TextStyle(
                    fontSize: 30,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}