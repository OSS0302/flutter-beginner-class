import 'package:flutter_beginner_class/23_12_20/class/model/star.dart';

class StarRepository{
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
      description: '아이는 30살 이에요',
    ),

  ];
  List<Star> getStars(){
    return stars;
  }
}