import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class EconomicsBanner extends StatelessWidget {
  EconomicsBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.0,
      width: double.infinity,
      child: Carousel(images: const [
        NetworkImage(
            'https://www.hollandisc.com/-/media/ISC/HollandV2/Blog/Holland_news_why_study_economics_700.jpg?h=450&la=en&mh=450&mw=700&w=700&hash=7718BFDC39B96C46180965912F32D8C278B58505'),
        NetworkImage(
            "https://www.fpcareers.net/wp-content/uploads/2021/01/b.jpg"),
        NetworkImage(
            'https://media.istockphoto.com/photos/business-woman-study-financial-market-to-calculate-possible-risks-and-picture-id1170740969?k=20&m=1170740969&s=612x612&w=0&h=yVq_2ZlOmDmat_EhBLtHrkKLJw7o10ovhmK4Cd0tMi8='),
        NetworkImage(
            'https://www.ziprecruiter.com/svc/fotomat/public-ziprecruiter/cms/931793076Economist.jpg'),
      ]),
    );
  }
}