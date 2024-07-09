//@dart=2.15
import 'package:flutter/material.dart';
import 'package:hiremi_version_two/Custom_Widget/Elevated_Button.dart';
import 'package:hiremi_version_two/Custom_Widget/SliderPageRoute.dart';
import 'package:hiremi_version_two/ThirdLandingPage.dart';

class Seceondlandingpage extends StatefulWidget {
  const Seceondlandingpage({Key? key}) : super(key: key);

  @override
  State<Seceondlandingpage> createState() => _SeceondlandingpageState();
}

class _SeceondlandingpageState extends State<Seceondlandingpage> {
  @override
  Widget build(BuildContext context) {
    double imageSizeWidth = MediaQuery.of(context).size.width;
    double imageSizeHeight = MediaQuery.of(context).size.height * 0.45;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            child: Column(
              children: [
                Center(
                  child:   Image.asset(
                    'images/onboarding-Discover.png',
                    width: imageSizeWidth,
                    height: imageSizeHeight,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.095),

                Text("Discover Exclusive", style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.w500,
                ),),
                Text("Job Opportunities.", style: TextStyle(
                  fontSize: 28.0,
                  color:Color(0xFF34AD78),
                  fontWeight: FontWeight.w500,
                ),),
                SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                Text("Find and connect with top candidates who are looking for unique and exciting roles.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                  ),),
                SizedBox(height: MediaQuery.of(context).size.height * 0.1235),
                CustomElevatedButton(
                  text: 'Next  >',
                  onPressed: () {
                    Navigator.push(
                      context,
                      SlidePageRoute(page: ThirdLandingPage()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}