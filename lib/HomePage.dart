
import 'package:flutter/material.dart';

import 'package:hiremi_version_two/Custom_Widget/Circle_row.dart';
import 'dart:ui'; // For BackdropFilter
import 'package:hiremi_version_two/Custom_Widget/Container_with_curved_Edges.dart';
import 'package:hiremi_version_two/Custom_Widget/OppurtunityCard.dart';
import 'package:hiremi_version_two/Custom_Widget/SliderPageRoute.dart';
import 'package:hiremi_version_two/Custom_Widget/Verifiedtrue.dart';
import 'package:hiremi_version_two/InternshipScreen.dart';
import 'package:hiremi_version_two/Notofication_screen.dart';




class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  double heightFactor = 0.5; // 50% of screen height
  double percentage = 15.0; // Example percentage value

  final ScrollController _scrollController = ScrollController();
  double _blurAmount = 10.0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    double offset = _scrollController.offset;
    setState(() {
      _blurAmount = (10 - (offset / 10)).clamp(0, 10); // Adjust blur amount based on scroll
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final imageHeight = screenSize.height;
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    bool verified = false;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Hiremi's Home",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {
            Navigator.push(
              context,
              SlidePageRoute(page: NotificationScreen()),
            );
          }, icon: const Icon(Icons.notifications))
        ],
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              controller: _scrollController,
              padding: EdgeInsets.all(screenSize.width * 0.04),
              children: [
                if (verified)
                  VerifiedProfileWidget(
                    name: "John Doe",
                    appId: "00 00 00 01",
                  )
                else
                  ContainerWithCurvedEdges(
                    heightFactor: heightFactor,
                    percentage: percentage,
                  ),

                SizedBox(height: screenSize.height * 0.01),
                Text(
                  "Explore hiremi",
                  style: TextStyle(
                    fontSize: screenSize.width * 0.05,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: screenSize.height * 0.01),
                Image.asset(
                  "images/Hiremi_Banner.png",
                  height: imageHeight * 0.2,
                ),
                SizedBox(height: screenSize.height * 0.024),
                const CircleRow(),
                SizedBox(height: screenSize.height * 0.024),
                Text(
                  "Hiremi's featured",
                  style: TextStyle(
                    fontSize: screenSize.width * 0.05,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: screenSize.height * 0.01),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [Color(0xFFFF6E01), Color(0xFFFEBC0D)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(width * 0.02), // Rounded corners
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (ctx) => InternshipsScreen(),
                          ));
                        },
                        child: Row(
                          children: [
                            Container(
                              width: width * 0.08,
                              height: width * 0.054,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: Icon(
                                Icons.spa,
                                size: width * 0.02,
                              ),
                            ),
                            SizedBox(
                              width: width * 0.015,
                            ),
                            const Text(
                              'Internships',
                              style: TextStyle(color: Colors.white, fontSize: 10),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [Color(0xFFFC3E41), Color(0xFFFF6E01)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(width * 0.02), // Rounded corners
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Container(
                              width: width * 0.059,
                              height: width * 0.054,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: Icon(
                                Icons.work,
                                size: width * 0.02,
                              ),
                            ),
                            SizedBox(
                              width: width * 0.015,
                            ),
                            const Text(
                              'Fresher Jobs',
                              style: TextStyle(color: Colors.white, fontSize: 10),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [Color(0xFFCB44BD), Color(0xFFDB6AA0)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(width * 0.02), // Rounded corners
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Container(
                              width: width * 0.05,
                              height: width * 0.05,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: Icon(
                                Icons.work,
                                size: width * 0.02,
                              ),
                            ),
                            SizedBox(
                              width: width * 0.015,
                            ),
                            const Text(
                              'Experienced Jobs',
                              style: TextStyle(color: Colors.white, fontSize: 10),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screenSize.height * 0.01),
                Text(
                  "Latest Opportunities",
                  style: TextStyle(
                    fontSize: screenSize.width * 0.05,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: screenSize.height * 0.03),
                OpportunityCard(
                  dp: Image.asset('images/Rec.png'),
                  role: 'Human Resource Intern',
                  company: 'Hiremi',
                  location: 'Bhopal, Madhya Prades, India',
                  stipend: '2,000-15,000',
                  mode: 'Remote',
                  type: 'Internship',
                  exp: 1,
                  daysPosted: 6,
                 // isVerified: widget.isVerified,
                ),



              ],
            ),
          ],
        ),
      ),



    );
  }

}



