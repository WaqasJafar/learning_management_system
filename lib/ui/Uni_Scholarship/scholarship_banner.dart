import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class ScholarshipBanner extends StatelessWidget {
  ScholarshipBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.0,
      width: double.infinity,
      child: Carousel(images: [
        NetworkImage('https://www.chevening.org/wp-content/uploads/2019/07/GeorgeBrown-2019-July-1635-e1563809428661.jpg'),
        NetworkImage('https://worldscholarshipforum.com/wp-content/uploads/2021/02/fully-funded-scholarships-for-Pakistan-students.jpg'),
        NetworkImage("https://www.ianaeducation.com/wp-content/uploads/2021/04/two-jindal-school-mba-students-graduating-double-ms-mba-600-400.jpg"),
        NetworkImage('https://www.currentschoolnews.com/wp-content/uploads/2020/08/edu1.jpg'),

      ]),
    );
  }
}