//@dart =2.9
import 'package:flutter/material.dart';
import 'dep_biology_dasboard.dart';

class DepBiologyHome extends StatefulWidget {

  const DepBiologyHome({key}) : super(key: key);

  @override
  State<DepBiologyHome> createState() => _DepBiologyHomeState();
}

class _DepBiologyHomeState extends State<DepBiologyHome> {
  final formKey = GlobalKey<FormState>();

  String name, email;

  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        title: const Text("Biology"),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            children: [
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network('https://www.usb.ac.ir/FileUpload/2587_2018-2-17-10-13-47.jpg',
                      height: 350,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.fill,
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
                      child: Text('Department of Biology',
                          style: TextStyle(
                            height: 2,
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const DepBiology(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
