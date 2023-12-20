import 'package:flutter/material.dart';
import 'package:flutter_beginner_class/23_12_20/00_ui_basic_Celebrity.dart';
import 'package:flutter_beginner_class/23_12_20/model/star.dart';

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
      home: StarListScreen(),
    );
  }
}

class StarListScreen extends StatelessWidget {
  final List<Star>stars =[
  Star(
    title: '아이유',
    sbuTitle: '아이유는 아이가 아니라 어른 이에요',
    imageUrl:
      'https://health.chosun.com/site/data/img_dir/2023/04/04/2023040401590_0.jpg',
    description: '아이는 31살이에요'
  ),
    Star(
    title: '수지',
    sbuTitle: '수지도 어른 이에요',
    imageUrl:
        'https://m.segye.com/content/image/2023/07/27/20230727518104.jpg',
    description: '아이는 31살 이에요',
  ),

  ];
   StarListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('나만의 스타'),
      ),
      body: ListView(
        children: stars.map((star) {
          return SizedBox(
            height: 500,
            child: StarWidget(star: star),
          );
        }).toList(),
      ),
    );
  }
}