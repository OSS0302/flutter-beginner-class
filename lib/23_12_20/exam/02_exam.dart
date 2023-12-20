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
  final String url ='https://thumb.ac-illust.com/c4/c463cee04d1f0809b06b396d681b02b7_t.jpeg';
  const HappyBirthDay({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
        
              child: Image.network(
                url,
                fit: BoxFit.cover,
              ),
        
            ),
            const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Happy',
                    style: TextStyle(fontSize: 48),
                  ),
                  Text(
                    'Birthday',
                    style: TextStyle(fontSize: 48),
                  ),
                  Text(
                    'Sam!',
                    style: TextStyle(fontSize: 48),
                  ),
                  Padding(
                    padding: EdgeInsets.all(28.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'From Emmma',
                          style: TextStyle(fontSize: 24),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
