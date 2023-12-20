import 'package:flutter/material.dart';
import 'package:flutter_beginner_class/23_12_20/class/model/dog.dart';
import 'package:flutter_beginner_class/23_12_20/class/ui_dog.dart';

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
      home: DogListScreen(),
    );
  }
}

class DogListScreen extends StatelessWidget {
  final List<Dog> dogs = [
    Dog(
        name: '웰시코기',
        age: '4살',
        imageUrl:
            'https://images.mypetlife.co.kr/content/uploads/2019/04/09154046/welsh-corgi-1581119_960_720.jpg',
        description:
            '''웰시 코기(영어: Welsh corgi), 웨일스 귀염둥이(wales 귀염둥이)는[1] 몸통이 길고 다리가 짧은 영국의 웨일스산의 개이다. 웰시 코기는 펨브로크 웰시 코기 , 카디건 웰시 코기 이 두 가지의 종류로 나뉘는데 펨브로크 종이 더 흔하다.

웰시 코기 카디건과 펨브룩은 귀 크기, 몸집 등으로 알 수 있다. 카디건은 귀 크기와 몸집이 조금 더 크다. 짧고 통통한 다리와 식빵 모양의 엉덩이가 특징이고, 털 색은 갈색, 고동색, 황토색, 검은색, 회색+검은색 점박이 등으로 다양하다. 몸무게는 14~ 17kg정도이다. 활동적이며 운동량이 많고, 털빠짐이 심하고 꼬리를 자른 웰시코기들이 많다. 자르지 않으면, 다리가 짧아서 꼬리가 쓸릴 수도 있기 때문이다.

성격
대다수의 웰시 코기는 사람에게 친절하고 사람을 잘 따르는 품종으로 유명하다. 그러나 개체에 따라 차이가 있을 수 있다. 일부는 보더 콜리와 비슷하게 양몰이도 충분히 할 수 있다.운동량이 많고 활발하여 함께 운동하기에는 아주 좋다. 그래서 소몰이견으로도 알려져 있다. 또한, 자기 영역에 대한 경계심이 많은 편이라 집을 잘 지킨다.'''),
    Dog(
        name: '골든 리트리버 ',
        age: '3살',
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGHieUPyho140Q5yXctm6JCAiqGdanoiMmLw&usqp=CAU',
        description: '''
                Golden Retriever | 골든 리트리버

개의 품종 중 하나로, 원산지는 영국의 스코틀랜드 지역이며 리트리버와 비슷하게 생긴 래브라도 리트리버가 원형이다.

이름대로 윤기가 흐르는 크림빛 또는 금빛의 풍성한 털이 가장 큰 특징이며 은은하게 귀티가 흐르는 인상이다. 마당이 있는 집이 일반적인 미국과 영국, 또한 영국의 직할 속령이었던 아일랜드, 캐나다, 오스트레일리아나 뉴질랜드에서 자주 볼 수 있는 견종이라고 한다. 신장 51~61cm, 체중 25~40kg 정도이다.

대한민국 한정으로는 누렁이[1], 인절미[2]와 골댕이(골든 리트리버 + 댕댕이)라고도 불린다.# 영미권에서는 너겟이라고 하는 모양(강아지 때만). 성격이 온순해서 '천사견'이라는 별명도 있다. 온순한 성미와 똑똑한 것으로 인해 맹인 안내견으로도 유명하다.

                '''),
  ];

  DogListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('강아지 돌보기'),
      ),
      body: ListView(
        children: dogs.map((dog) {
          return SizedBox(
            height: 1000,
            child: DogWidget(dog: dog),
          );
        }).toList(),
      ),
    );
  }
}
