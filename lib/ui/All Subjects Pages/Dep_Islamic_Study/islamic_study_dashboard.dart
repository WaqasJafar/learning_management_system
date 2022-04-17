//@dart =2.9
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../university_transport/transport_banner.dart';
import '../../widget/custom_card.dart';
import 'Programs/m_phil_islamic_studies.dart';
import 'Programs/phd_islamci_study.dart';
import 'islamic_banners.dart';

class IslamicStudyDashboard extends StatelessWidget {
  const IslamicStudyDashboard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        title: const Text("Dep.of Islamic Study"),
      ),
      body: ListView(
        children: <Widget>[
          IslamicBanner(),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: SizedBox(
              height: 80,
              child: GestureDetector(
                onTap: () => Get.to(const MPhilIslamicStudy()),
                child: const CustomCard(
                  child: Center(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://us.123rf.com/450wm/bsd555/bsd5551912/bsd555191200885/134836329-dna-spiral-red-flat-design-long-shadow-glyph-icon-deoxyribonucleic-nucleic-acid-helix-spiraling-stra.jpg?ver=6'),
                      ),
                      title: Text(
                        'M.Phil Islamic Studies',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text("Select for Yor Program"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: SizedBox(
              height: 80,
              child: GestureDetector(
                onTap: () => Get.to(PhdIslamicStudy()),
                child: const CustomCard(
                  child: Center(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://us.123rf.com/450wm/bsd555/bsd5551912/bsd555191200885/134836329-dna-spiral-red-flat-design-long-shadow-glyph-icon-deoxyribonucleic-nucleic-acid-helix-spiraling-stra.jpg?ver=6'),
                      ),
                      title: Text(
                        'Ph.D Islamic Studies',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text("Select for Yor Program"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
