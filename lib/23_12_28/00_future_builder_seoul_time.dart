import 'package:flutter/material.dart';
import 'package:flutter_beginner_class/23_12_28/data_source/time_api.dart';
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
      home: const SeoulTimeApp(),
    );
  }
}

class SeoulTimeApp extends StatefulWidget {
  const SeoulTimeApp({super.key});

  @override
  State<SeoulTimeApp> createState() => _SeoulTimeAppState();
}

class _SeoulTimeAppState extends State<SeoulTimeApp> {
  final api = TimeApi();
  Time? _time;

  bool get isLoading => _time == null;

  @override
  void initState() {

    super.initState();
     init(); // initState 안에서 는 than 을 쓸 수없어서
  }
  Future<void> init() async{
    final time = await api.getTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('서울  시간'),
      ),

      body:   isLoading
        ? const Center(child: CircularProgressIndicator())
        : Center(
        child: Column(
          children: [
            Text(
              _time!.time,
              style: const TextStyle(fontSize: 30),
            ),
            Text(
              _time!.utcTime,
              style: const TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
