import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class MassComBanner extends StatelessWidget {
  MassComBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.0,
      width: double.infinity,
      child: Carousel(images: const [
        NetworkImage(
            'https://university.apeejay.edu/images/Schools/sjmc.jpg'),
        NetworkImage(
            "https://www.morphacademy.com/wp-content/uploads/2018/05/CAREER-IN-MASS-COMMUNICATION-AND-JOURNALISM.jpg"),
        NetworkImage(
            'https://www.sfasu.edu/sites/default/files/2018-06/MassComm-Home.jpg'),
        NetworkImage(
            'https://www.bennett.edu.in/wp-content/uploads/2018/04/1stArticle.jpg'),
      ]),
    );
  }
}