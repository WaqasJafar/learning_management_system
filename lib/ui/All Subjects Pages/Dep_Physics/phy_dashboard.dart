//@dart =2.9
import 'package:flutter/material.dart';
import 'package:flutter_login_screen/ui/All%20Subjects%20Pages/Dep_Physics/physics_banners.dart';
import 'package:flutter_login_screen/ui/All%20Subjects%20Pages/Dep_Physics/programs/bs_physics.dart';
import 'package:flutter_login_screen/ui/All%20Subjects%20Pages/Dep_Physics/programs/mphil_physics.dart';
import 'package:flutter_login_screen/ui/All%20Subjects%20Pages/Dep_Physics/programs/msc_physics.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../university_transport/transport_banner.dart';
import '../../widget/custom_card.dart';

class PhysicsDashboard extends StatelessWidget {
  const PhysicsDashboard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        title: const Text("Dep.of Physics"),
      ),
      body: ListView(
        children: <Widget>[
          PhysicsBanner(),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () => Get.to(const BSPhysics()),
              child: const SizedBox(
                height: 80,
                child: CustomCard(
                  child: Center(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://us.123rf.com/450wm/bsd555/bsd5551912/bsd555191200885/134836329-dna-spiral-red-flat-design-long-shadow-glyph-icon-deoxyribonucleic-nucleic-acid-helix-spiraling-stra.jpg?ver=6'),
                      ),
                      title: Text(
                        'BS Physics',
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
                onTap: () => Get.to(MSCPhysics()),
                child: const CustomCard(
                  child: Center(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://us.123rf.com/450wm/bsd555/bsd5551912/bsd555191200885/134836329-dna-spiral-red-flat-design-long-shadow-glyph-icon-deoxyribonucleic-nucleic-acid-helix-spiraling-stra.jpg?ver=6'),
                      ),
                      title: Text(
                        'M.Sc Physics',
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
                onTap: () => Get.to(MPHILPhysics()),
                child: const CustomCard(
                  child: Center(
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 16.0,
                        backgroundImage: NetworkImage(
                            'https://us.123rf.com/450wm/bsd555/bsd5551912/bsd555191200885/134836329-dna-spiral-red-flat-design-long-shadow-glyph-icon-deoxyribonucleic-nucleic-acid-helix-spiraling-stra.jpg?ver=6'),
                      ),
                      title: Text(
                        'MS/M.Phil Physics',
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
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: SizedBox(
              height: 80,
              child: CustomCard(
                child: Center(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://us.123rf.com/450wm/bsd555/bsd5551912/bsd555191200885/134836329-dna-spiral-red-flat-design-long-shadow-glyph-icon-deoxyribonucleic-nucleic-acid-helix-spiraling-stra.jpg?ver=6'),
                    ),
                    title: Text(
                      'Ph.D Physics',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text("Select for Yor Program"),
                    trailing: Icon(Icons.arrow_forward_ios),
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
