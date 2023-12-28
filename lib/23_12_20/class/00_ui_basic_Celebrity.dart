import 'package:flutter/material.dart';
import 'package:flutter_beginner_class/23_12_20/class/model/star.dart';

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
      home: StarWidget(
        star: Star(
            title: '아이유',
            sbuTitle: '아이유는 아이가 아니라 어른 이에요',
            imageUrl:
                'https://health.chosun.com/site/data/img_dir/2023/04/04/2023040401590_0.jpg',
            description: '아이는 31살이에요', id: 1),
      ),
    );
  }
}

class StarWidget extends StatefulWidget {
  final Star star;

  const StarWidget({
    super.key,
    required this.star,
  });

  @override
  State<StarWidget> createState() => _StarWidgetState();
}

class _StarWidgetState extends State<StarWidget> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Image.network(
                widget.star.imageUrl,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            secondArea(),
            thirdArea(),
            forthArea(),
          ],
        ),
      ),
    );
  }

  Widget secondArea() {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.star.title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Text(
                widget.star.sbuTitle,
                style: const TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              setState(() {
                isFavorite = !isFavorite;
              });
            },
            child: Row(
              children: [
                Icon(
                  isFavorite ? Icons.star : Icons.star_border,
                  color: Colors.red,
                ),
                const Text('41'),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget thirdArea() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButtonWidget(
          icon: Icon(
            Icons.phone,
            color: Colors.blue,
          ),
          title: 'CALL',
        ),
        IconButtonWidget(
          icon: Icon(
            Icons.near_me,
            color: Colors.blue,
          ),
          title: 'ROUTE',
        ),
        IconButtonWidget(
          icon: Icon(
            Icons.share,
            color: Colors.blue,
          ),
          title: 'SHARE',
        ),
      ],
    );
  }

  Widget forthArea() {
    return Padding(
        padding: const EdgeInsets.all(32.0),
        child: Text(
          widget.star.description,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ));
  }
}

class IconButtonWidget extends StatelessWidget {
  final String title;
  final Icon icon;

  const IconButtonWidget({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        icon,
        Text(
          title,
          style: const TextStyle(
            color: Colors.blue,
          ),
        )
      ],
    );
  }
}
