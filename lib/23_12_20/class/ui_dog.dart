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
    child: Text('''웰시 코기(영어: Welsh corgi), 웨일스 귀염둥이(wales 귀염둥이)는[1] 몸통이 길고 다리가 짧은 영국의 웨일스산의 개이다. 웰시 코기는 펨브로크 웰시 코기 , 카디건 웰시 코기 이 두 가지의 종류로 나뉘는데 펨브로크 종이 더 흔하다.

웰시 코기 카디건과 펨브룩은 귀 크기, 몸집 등으로 알 수 있다. 카디건은 귀 크기와 몸집이 조금 더 크다. 짧고 통통한 다리와 식빵 모양의 엉덩이가 특징이고, 털 색은 갈색, 고동색, 황토색, 검은색, 회색+검은색 점박이 등으로 다양하다. 몸무게는 14~ 17kg정도이다. 활동적이며 운동량이 많고, 털빠짐이 심하고 꼬리를 자른 웰시코기들이 많다. 자르지 않으면, 다리가 짧아서 꼬리가 쓸릴 수도 있기 때문이다.

성격
대다수의 웰시 코기는 사람에게 친절하고 사람을 잘 따르는 품종으로 유명하다. 그러나 개체에 따라 차이가 있을 수 있다. 일부는 보더 콜리와 비슷하게 양몰이도 충분히 할 수 있다.운동량이 많고 활발하여 함께 운동하기에는 아주 좋다. 그래서 소몰이견으로도 알려져 있다. 또한, 자기 영역에 대한 경계심이 많은 편이라 집을 잘 지킨다.'''),
  );
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
