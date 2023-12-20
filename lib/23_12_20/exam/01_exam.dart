import 'package:flutter/material.dart';

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
      home: const HappyBirthDay(),
    );
  }
}

class HappyBirthDay extends StatelessWidget {
  const HappyBirthDay({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Happy',style: TextStyle(fontSize: 50),),
            Text('Birthday',style: TextStyle(fontSize: 50),),
            Text('Sam!',style: TextStyle(fontSize: 50),),
            Padding(
              padding: EdgeInsets.all(28.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('From Emmma',style: TextStyle(fontSize: 30),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
