//@dart = 2.9
import 'package:flutter/material.dart';
import 'package:flutter_login_screen/constants.dart';
import 'package:flutter_login_screen/services/helper.dart';
import 'package:flutter_login_screen/ui/university_transport/transport_detail.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class TransportHome extends StatefulWidget {
  const TransportHome({Key key}) : super(key: key);

  @override
  _TransportHomeState createState() => _TransportHomeState();
}

class _TransportHomeState extends State<TransportHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(COLOR_PRIMARY),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
            color: isDarkMode(context) ? Colors.white : Colors.white),
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Image.asset(
                        'assets/images/welcom.png',
                        width: 150.0,
                        height: 150.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const Align(
                      alignment: Alignment.center,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Well Come To Transports Routes",
                      style: TextStyle(
                          fontFamily: "Times New Roman",
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      "LGU Student body includes resident from  all areas of city.Keeping this in mind, we provide transport facilities to our student. University facilitates transport through contractor that run routes covering aimost all parts of the city. Student are required to fill out the request of transport from upon enrolling and prior to the start of term.",textAlign: TextAlign.justify,
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontFamily: "Gilroy",
                          fontSize: 16,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 66,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: const Color(0xff2C48BA),
                            borderRadius: BorderRadius.circular(20)),
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 12),
                          height: 64,
                          child: ElevatedButton(
                            onPressed: () => Get.to(() => TransportDetail()),
                            child: const Text(
                              "Click For Transports",
                              style: TextStyle(
                                  color: Colors.white,
                                  letterSpacing: 1.3,
                                  fontFamily: "Gilroy",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 23),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
