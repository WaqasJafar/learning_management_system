import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class MathBanner extends StatelessWidget {
  MathBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.0,
      width: double.infinity,
      child: Carousel(images: [
        NetworkImage(
            'https://miro.medium.com/max/640/1*a5IuvCGtz_WZDmL1YZiheQ.jpeg'),
        NetworkImage(
            "https://wp-media.petersons.com/blog/wp-content/uploads/2019/03/10123432/iStock-946556568.jpg"),
        NetworkImage(
            'https://www.livecareer.com/wp-content/uploads/2019/05/math-student-studying.jpg'),
        NetworkImage(
            'https://ww2.kqed.org/app/uploads/sites/23/2015/05/Beard-Algorithm-1440x811.jpg'),
      ]),
    );
  }
}