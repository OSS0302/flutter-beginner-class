import 'package:flutter/material.dart';
import 'package:flutter_beginner_class/23_12_20/class/model/dog.dart';

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
      home: DogWidget(
        dog: Dog(
            name: '웰시코기',
            age: '4살',
            imageUrl:
                'https://images.mypetlife.co.kr/content/uploads/2019/04/09154046/welsh-corgi-1581119_960_720.jpg',
            description:
                '나중에 입력'),
      ),
    );
  }
}

class DogWidget extends StatefulWidget {
  final Dog dog;

  const DogWidget({
    super.key,
    required this.dog,
  });

  @override
  State<DogWidget> createState() => _DogWidgetState();
}

class _DogWidgetState extends State<DogWidget> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 4 / 3,
              child: Image.network(
                widget.dog.imageUrl,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            DogInfoArea(),
            IconsArea(),
            dogDescription(),
          ],
        ),
      ),
    );
  }

  Widget DogInfoArea() {
    return Padding(
      padding: const EdgeInsets.all(17.0),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.dog.name,
                  style: const TextStyle(fontSize: 32),
                ),
                Text(
                  widget.dog.age,
                  style: const TextStyle(fontSize: 24),
                ),
              ],
            ),
          ),
          Row(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    isFavorite = !isFavorite;
                  });
                },
                child:
                    Icon(isFavorite ? Icons.favorite : Icons.favorite_border),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('좋아요'),
              ),
            ],
          ),
        ],
      ),
    );
  }


  Widget IconsArea() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButtonWidget(
            title: '산책가기',
            icon: Icon(
              Icons.run_circle,
              size: 30,
            )),
        IconButtonWidget(
          title: '하루종일 강아지 돌 봐주기 ',
          icon: Icon(
            Icons.home,
            size: 30,
          ),
        ),
      ],
    );
  }
  
  Widget dogDescription (){
    return Padding(
        padding: const EdgeInsets.all(32.0),
        child: Text(widget.dog.description));

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
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
