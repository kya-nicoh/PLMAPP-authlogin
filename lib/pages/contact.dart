import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const Contact());
}

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Carousel Slider',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CarouselSliderExample(),
    );
  }
}

class CarouselSliderExample extends StatelessWidget {
  const CarouselSliderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          shrinkWrap: true,
          children: [
            CarouselSlider(
              items: [
                Container(
                  margin: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: const DecorationImage(
                      image: NetworkImage(
                          "https://plm.edu.ph/images/news/announcements/2022/2022-April-29-Phone-service-interruption-v2-1.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: const DecorationImage(
                      image: NetworkImage(
                          "https://plm.edu.ph/images/news/announcements/2022/2022-April-29-Phone-service-interruption-v2-2.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: const DecorationImage(
                      image: NetworkImage(
                          "https://plm.edu.ph/images/news/announcements/2022/2022-April-29-Phone-service-interruption-v2-3B.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: const DecorationImage(
                      image: NetworkImage(
                          "https://plm.edu.ph/images/news/announcements/2022/2022-April-29-Phone-service-interruption-v2-4.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
              options: CarouselOptions(
                height: 300.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 10 / 10,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                viewportFraction: 0.75,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
