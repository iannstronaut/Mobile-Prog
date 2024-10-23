import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:linkaja_v2/shared/theme.dart';

class InfiniteCarousel extends StatefulWidget {
  const InfiniteCarousel({Key? key}) : super(key: key);

  @override
  _InfiniteCarouselState createState() => _InfiniteCarouselState();
}

class _InfiniteCarouselState extends State<InfiniteCarousel> {
  int _currentIndex = 0;

  // Dummy data: list of image URLs (replace with your own image URLs)
  final List<String> imageList = [
    'assets/images/img_carosel_1.jpg',
    'assets/images/img_carosel_2.jpg',
    'assets/images/img_carosel_3.jpg',
    'assets/images/img_carosel_4.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        // CarouselSlider
        CarouselSlider(
          options: CarouselOptions(
            height: 150.0,
            autoPlay: true,
            enlargeCenterPage: true,
            enableInfiniteScroll: true,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          items: imageList.map((imageUrl) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: AssetImage(imageUrl), // Perbaikan disini
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            );
          }).toList(),
        ),

        // Positioned indicator dots (bottom left)
        Positioned(
          bottom: -25.0,
          left: 10.0,
          child: Row(
            children: imageList.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => _onDotTapped(entry.key),
                child: Container(
                  width: 8.0,
                  height: 8.0,
                  margin: const EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 4.0,
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentIndex == entry.key
                        ? redTomato // Ganti ke `redTomato`
                        : Colors.grey, // Ganti ke `grayLight`
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }

  void _onDotTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

class InfiniteCarouselWithText extends StatefulWidget {
  const InfiniteCarouselWithText({Key? key}) : super(key: key);

  @override
  _InfiniteCarouselWithTextState createState() =>
      _InfiniteCarouselWithTextState();
}

class _InfiniteCarouselWithTextState extends State<InfiniteCarouselWithText> {
  int _currentIndex = 0;

  // Dummy data: list of image URLs (replace with your own image URLs)
  final List<String> imageList = [
    'assets/images/img_carosel_1.jpg',
    'assets/images/img_carosel_2.jpg',
    'assets/images/img_carosel_3.jpg',
    'assets/images/img_carosel_4.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(clipBehavior: Clip.none, children: [
      // CarouselSlider
      CarouselSlider(
        options: CarouselOptions(
          height: 150.0,
          autoPlay: true,
          enlargeCenterPage: true,
          enableInfiniteScroll: true,
          onPageChanged: (index, reason) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
        items: imageList.map((imageUrl) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage(imageUrl), // Perbaikan disini
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          );
        }).toList(),
      ),
    ]);
  }

  void _onDotTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
