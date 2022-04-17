import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class TransportBanner extends StatelessWidget {
  TransportBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.0,
      width: double.infinity,
      child: Carousel(images: [
        NetworkImage(
            'https://lgu.edu.pk/wp-content/uploads/2021/12/LGU-Latest-News.jpg'),
        NetworkImage(
            "https://web.uettaxila.edu.pk/PageContents/transport/pageImg3.jpg"),
        NetworkImage(
            'https://web.uettaxila.edu.pk/PageContents/transport/bussesMain.jpg'),
        NetworkImage(
            'https://web.uettaxila.edu.pk/PageContents/transport/pageImg5.jpg'),
      ]),
    );
  }
}