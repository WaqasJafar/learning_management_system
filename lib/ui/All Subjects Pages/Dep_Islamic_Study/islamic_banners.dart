import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class IslamicBanner extends StatelessWidget {
  IslamicBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.0,
      width: double.infinity,
      child: Carousel(images: [
        NetworkImage(
            'https://www.acs-schools.com/sites/default/files/styles/hero_image_desktop/public/2019-01/1600x800_379B2197_PrintSize_0.jpg?itok=lKawOrjl'),
        NetworkImage(
            "https://images.squarespace-cdn.com/content/v1/5845906b2994ca4e352eb4d9/1598142096590-CLDR88J92VWJCZ4OL3WY/Miftaah-21.jpg"),
        NetworkImage(
            'https://i0.wp.com/www.thesciencefaith.com/wp-content/uploads/2016/07/Islamic_Studies_Popularity_Jumps_in_US.jpg?fit=810%2C540&ssl=1&resize=1280%2C720'),
        NetworkImage(
            'https://web.uettaxila.edu.pk/PageContents/transport/pageImg5.jpg'),
      ]),
    );
  }
}