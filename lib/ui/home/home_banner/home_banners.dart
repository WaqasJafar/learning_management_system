import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.0,
      width: double.infinity,
      child: Carousel(images: const [
        NetworkImage('https://zahanat.com/wp-content/uploads/2021/06/lahore-garosion-university.jpg'),
        NetworkImage('https://www.ucl.edu.pk/images/ifp.png'),
        NetworkImage("https://www.phoneworld.com.pk/wp-content/uploads/2020/01/CreatingSharedValue-LUMS-students-in-lab.jpg"),
        NetworkImage(
            'https://www.ox.ac.uk/sites/files/oxford/media_wysiwyg/Physics%202%20460.jpg'),

      ]),
    );
  }
}