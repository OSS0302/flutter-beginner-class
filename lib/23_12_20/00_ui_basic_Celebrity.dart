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
      home: const CelebrityWidget(),
    );
  }
}

class CelebrityWidget extends StatefulWidget {
  const CelebrityWidget({super.key});

  @override
  State<CelebrityWidget> createState() => _CelebrityWidgetState();
}

class _CelebrityWidgetState extends State<CelebrityWidget> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(
                  'https://health.chosun.com/site/data/img_dir/2023/04/04/2023040401590_0.jpg',
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
              secondArea(),
              thirdArea(),
              forthArea(),
            ],
          ),
        ),
      ),
    );
  }

  Widget secondArea() {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Row(
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Title',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Text(
                'sub Title',
                style: TextStyle(
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
          title: 'CALL',
        ),
        IconButtonWidget(
          icon: Icon(Icons.share,color: Colors.blue,),
          title: 'CALL',
        ),
      ],
    );
  }

  Widget forthArea() {
    return const Padding(
      padding: EdgeInsets.all(32.0),
      child: Text(
          '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus pellentesque dapibus dui, sed scelerisque erat molestie quis. Nam et sem a purus euismod condimentum. Cras mattis ullamcorper elementum. Duis eget commodo metus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Suspendisse imperdiet massa in pulvinar efficitur. Praesent posuere diam in sem porttitor pellentesque. Proin id leo mi.

Pellentesque interdum massa augue. Nulla vel fringilla magna, vehicula aliquet tortor. Vestibulum porta consectetur velit eu accumsan. In ut consectetur neque. Integer luctus ligula at iaculis mattis. Ut ac elit id justo luctus laoreet eu sed justo. Proin lacus velit, gravida id quam nec, porttitor tristique nibh. Vestibulum fringilla felis sit amet faucibus aliquet. Etiam at neque eu magna sollicitudin tincidunt. Nam eu luctus neque. Nullam tempus ligula id dolor porttitor pharetra. Nullam pulvinar et ligula id pellentesque. Praesent nec molestie velit. Aenean euismod iaculis hendrerit. Integer rhoncus varius consequat.

Suspendisse hendrerit euismod scelerisque. Praesent id dolor in turpis consequat faucibus vitae at dui. Vestibulum pulvinar cursus elit, vel rutrum ex. Phasellus nec bibendum arcu. Etiam in aliquet massa. Pellentesque varius suscipit massa, quis sollicitudin enim congue ac. Mauris efficitur volutpat arcu ut ullamcorper. Cras scelerisque nulla posuere erat pellentesque laoreet. Sed nec sagittis lectus. Integer interdum pulvinar lacus, sit amet porta justo rhoncus ac. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce sagittis volutpat felis a sodales. Nam hendrerit convallis elit ut elementum. Fusce mollis odio libero, eget egestas erat pellentesque in. Vestibulum id commodo turpis, nec imperdiet ligula.

Integer et nibh quis mi mattis commodo eu non eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur venenatis id nibh sed cursus. Mauris maximus commodo vulputate. Mauris mauris risus, pharetra consectetur purus non, tristique ultricies libero. Nullam pharetra ut risus eu aliquam. Vivamus ornare feugiat justo, in vulputate odio iaculis ut. Vivamus tincidunt quam sed turpis ornare, vel accumsan nisl feugiat. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nullam eleifend suscipit neque in hendrerit. Etiam congue molestie nunc, quis sollicitudin ex pellentesque eu. Pellentesque at dui egestas, faucibus lectus ut, ornare magna. Morbi scelerisque laoreet sapien, ac mollis purus porta in. Pellentesque nec diam vitae elit interdum tincidunt.

Mauris a porttitor magna. Fusce scelerisque suscipit ultrices. Fusce risus risus, malesuada eu dui eu, blandit venenatis nunc. Donec vitae dolor interdum lorem eleifend mattis eget sed velit. Nullam vel pellentesque arcu. Aenean placerat ipsum eget eleifend semper. Nulla in consectetur quam. Integer lectus nisi, consequat iaculis interdum ac, scelerisque ac felis. Pellentesque tempus nisl eget augue ultrices dictum. Curabitur blandit justo eget sollicitudin convallis.


    '''),
    );
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
