import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

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

class HappyBirthDay extends StatefulWidget {
  const HappyBirthDay({super.key});

  @override
  State<HappyBirthDay> createState() => _HappyBirthDayState();
}

class _HappyBirthDayState extends State<HappyBirthDay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Lottie.asset(
              'assets/tree.json',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.contain,
            ),
            const Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Merry Christmas',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
