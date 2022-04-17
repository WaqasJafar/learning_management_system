import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_login_screen/constants.dart';
import 'package:flutter_login_screen/model/user.dart';
import 'package:flutter_login_screen/services/helper.dart';
import 'package:flutter_login_screen/ui/auth/authentication_bloc.dart';
import 'package:flutter_login_screen/ui/auth/welcome/welcome_screen.dart';
import 'package:flutter_login_screen/ui/home/home_banner/home_banners.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:url_launcher/url_launcher.dart';

import '../About_Us/about.dart';
import '../Dashboard/dashboard.dart';
import '../Rules_Regulation/rules_home.dart';
import '../Uni_Cafee/cafeteria_home.dart';
import '../Uni_Labs/labs_detail.dart';
import '../Uni_Scholarship/scholarship_detail.dart';
import '../Welfare_Program/welfare_home.dart';

class HomeScreen extends StatefulWidget {
  final User user;

  const HomeScreen({Key? key, required this.user}) : super(key: key);

  @override
  State createState() => _HomeState();
}

class _HomeState extends State<HomeScreen> {
  late User user;

  @override
  void initState() {
    super.initState();
    user = widget.user;
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) {
        if (state.authState == AuthState.unauthenticated) {
          pushAndRemoveUntil(context, const WelcomeScreen(), false);
        }
      },
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Container(
                color: const Color(COLOR_PRIMARY),
                child: DrawerHeader(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        user.profilePictureURL == ''
                            ? CircleAvatar(
                          radius: 35,
                          backgroundColor: Colors.grey.shade400,
                          child: ClipOval(
                            child: SizedBox(
                              width: 70,
                              height: 70,
                              child: Image.asset(
                                'assets/images/placeholder.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        )
                            : displayCircleImage(
                            user.profilePictureURL, 80, false),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            user.fullName(),
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              user.email,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ListTile(
                title: const Text(
                  'About Us',
                  style: TextStyle(color: Colors.black),
                ),
                trailing: Transform.rotate(
                    angle: pi / 1, child: const Icon(Icons.arrow_back_ios)),
                onTap: () {
                  Get.to(const AboutUs());
                },
              ),
              ListTile(
                title: const Text(
                  'LGU Rules',
                  style: TextStyle(color: Colors.black),
                ),
                trailing: Transform.rotate(
                    angle: pi / 1, child: const Icon(Icons.arrow_back_ios)),
                onTap: () {
                  Get.to(const RulesHome());
                },
              ),
              ListTile(
                title: const Text(
                  'Welfare Programmes',
                  style: TextStyle(color: Colors.black),
                ),
                trailing: Transform.rotate(
                    angle: pi / 1, child: const Icon(Icons.arrow_back_ios)),
                onTap: () {
                  Get.to(const WelfareHome());
                },
              ),
              ListTile(
                title: const Text(
                  'University Cafeteria',
                  style: TextStyle(color: Colors.black),
                ),
                trailing: Transform.rotate(
                    angle: pi / 1, child: const Icon(Icons.arrow_back_ios)),
                onTap: () {
                  Get.to(const CafeHome());
                },
              ),
              ListTile(
                title: const Text(
                  'University Labs',
                  style: TextStyle(color: Colors.black),
                ),
                trailing: Transform.rotate(
                    angle: pi / 1, child: const Icon(Icons.arrow_back_ios)),
                onTap: () {
                  Get.to(const LabsDetails());
                },
              ),
              ListTile(
                title: const Text(
                  'Student Profile',
                  style: TextStyle(color: Colors.black),
                ),
                trailing: Transform.rotate(
                    angle: pi / 1, child: const Icon(Icons.arrow_back_ios)),
                onTap: () {},
              ),
              ListTile(
                title: const Text(
                  'Scholarship Policy',
                  style: TextStyle(color: Colors.black),
                ),
                trailing: Transform.rotate(
                    angle: pi / 1, child: const Icon(Icons.arrow_back_ios)),
                onTap: () {

                  Get.to(const ScholarshipDetails());
                },
              ),
              ListTile(
                title: const Text(
                  'Logout',
                  style: TextStyle(color: Colors.black),
                ),
                trailing: Transform.rotate(
                    angle: pi / 1, child: const Icon(Icons.arrow_back_ios)),
                onTap: () {
                  context.read<AuthenticationBloc>().add(LogoutEvent());
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: const Text(
            'DashBoard',
            style: TextStyle(color: Colors.indigo),
          ),
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                HomeBanner(),
                const SizedBox(
                  height: 5,
                ),
                MainDashboard(),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => launch(("tel://03218899335")),
          backgroundColor: Colors.green,
          child: const Icon(Icons.phone),
        ),
      ),
    );
  }
}
