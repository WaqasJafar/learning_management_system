import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class PhysicsBanner extends StatelessWidget {
  PhysicsBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.0,
      width: double.infinity,
      child: Carousel(images: [
        NetworkImage(
            'https://liberalarts.pacific.edu/sites/default/files/styles/two_column_header_image/public/2020-08/RS42207_Physics-Lab4_0.jpg?itok=KVvVgMed'),
        NetworkImage(
            "https://simons-rock.edu/_images/academics/program-overview/science-mathematics-and-computing/physics-student-1.jpg"),
        NetworkImage(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJqRpmL5UfDVqm6YYhm9BFr2rmalkH84HIpAFRJYtItl6CFY_xQZ8C5gADEt2i3rEmKfU&usqp=CAU'),
        NetworkImage(
            'https://www.uwrf.edu/PHYS/images/Physics-lab-research-R-Alvarado-robotics-code-2017.jpg'),
      ]),
    );
  }
}