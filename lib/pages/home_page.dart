import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Container(
        height: 150,
        // decoration:decor,
        decoration: const BoxDecoration(color: Colors.transparent),
        child: Swiper(
          itemBuilder: (BuildContext context, int index) {
            return Image.network(
              "http://via.placeholder.com/350x150",
              fit: BoxFit.fill,
            );
          },
          itemCount: 3,
          pagination: const SwiperPagination(),
          // control: const SwiperControl(),
        ),
      ),
    );
  }
}
