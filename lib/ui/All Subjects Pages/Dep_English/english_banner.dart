import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class EnglishBanner extends StatelessWidget {
  EnglishBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.0,
      width: double.infinity,
      child: Carousel(images: [
        NetworkImage(
            'https://www.eng4intl.com/wp-content/uploads/2019/04/English-Courses-Atlanta_Stress-Free-960x667.jpg'),
        NetworkImage(
            "https://www.thisisaustralia.com/wp-content/uploads/2020/11/study_english1.jpg"),
        NetworkImage(
            'https://www.englishstudybreaks.com/wp-content/uploads/2015/12/studentssmall.jpg'),
        NetworkImage(
            'https://ihcairoeg.com/wp-content/uploads/2020/04/study-english.jpg'),
      ]),
    );
  }
}