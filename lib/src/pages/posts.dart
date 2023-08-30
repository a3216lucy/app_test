import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

/// 貼文頁
class Posts extends StatefulWidget {
  const Posts({Key? key}) : super(key: key);

  @override
  State<Posts> createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  int _currentIndex = 0;
  final CarouselController _controller = CarouselController();
  final List<String> images = [
    'assets/images/purple.jpg',
    'assets/images/gary.jpg',
    'assets/images/pink.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Posts')),
      body: Center(
        child: Column(
          children: [
            CarouselSlider(
              // 輪播控制器
              carouselController: _controller,
              // 輪播設定
              options: CarouselOptions(
                // 圖片寬高比
                aspectRatio: 16 / 9,
                // 自動播放
                autoPlay: true,
                // 自動播放間隔時間，默認值為 Duration(seconds: 3)
                autoPlayInterval: const Duration(seconds: 5),
                // 當前頁放大
                enlargeCenterPage: true,
                // 頁面更改回調
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
              items: images.map((item) => Image.asset(item)).toList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: images.map((url) {
                int index = images.indexOf(url);
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentIndex == index
                        ? Colors.blueAccent
                        : Colors.grey,
                  ),
                );
              }).toList(),
            ),
            const SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {},
              child: const Text('到 Detail 頁面'),
            ),
          ],
        ),
      ),
    );
  }
}
