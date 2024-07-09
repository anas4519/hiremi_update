import 'package:flutter/material.dart';
import 'package:hiremi_version_two/FirstLandingPage.dart';
import 'package:hiremi_version_two/HomePage.dart';
import 'package:hiremi_version_two/InternshipScreen.dart';
import 'package:hiremi_version_two/SeceondLandingpage.dart';
import 'package:hiremi_version_two/SplashScreen.dart';

class NewNavbar extends StatefulWidget {
  const NewNavbar({Key? key}) : super(key: key);

  @override
  State<NewNavbar> createState() => _NewNavbarState();
}

class _NewNavbarState extends State<NewNavbar> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  final List<Widget> _pages = [
    const HomePage(),


  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          // PageView(
          //   controller: _pageController,
          //   children: _pages,
          //   onPageChanged: (index) {
          //     setState(() {
          //       _selectedIndex = index;
          //     });
          //   },
          // ),
          PageView(
            controller: _pageController,
            children: _pages.map((page) => Navigator(
              onGenerateRoute: (settings) {
                return MaterialPageRoute(
                  builder: (context) => page,
                );
              },
            )).toList(),
            onPageChanged: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
          Positioned(
            bottom: screenHeight * 0.02,
            left: screenWidth * 0.05,
            right: screenWidth * 0.05,
            child: Container(
              height: screenHeight * 0.08,
              decoration: const BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
                child: BottomNavigationBar(
                  items: <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                      icon: Icon(Icons.home_filled, size: screenHeight * 0.03, color: _selectedIndex == 0 ? const Color(0xFFC1272D) : Colors.black),
                      label: 'HOME',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.file_copy, size: screenHeight * 0.03, color: _selectedIndex == 1 ? const Color(0xFFC1272D) : Colors.black),
                      label: 'APPLIES',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.chat, size: screenHeight * 0.03, color: _selectedIndex == 2 ? const Color(0xFFC1272D) : Colors.black),
                      label: 'QUERIES',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.person, size: screenHeight * 0.03, color: _selectedIndex == 3 ? const Color(0xFFC1272D) : Colors.black),
                      label: 'PROFILE',
                    ),
                  ],
                  currentIndex: _selectedIndex,
                  selectedItemColor: const Color(0xFFC1272D),
                  unselectedItemColor: Colors.black,
                  onTap: _onItemTapped,
                  showUnselectedLabels: true,
                  type: BottomNavigationBarType.fixed,
                  selectedLabelStyle: TextStyle(fontSize: screenHeight * 0.01, color: Colors.black),
                  unselectedLabelStyle: TextStyle(fontSize: screenHeight * 0.01, color: Colors.black),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: screenHeight * 0.06,
            left: 0,
            right: 0,
            child: Transform.translate(
              offset: Offset(0, -screenHeight * 0.03),
              child: Center(
                child: SizedBox(
                  width: screenWidth * 0.2,
                  height: screenWidth * 0.2,
                  child: FloatingActionButton(
                    onPressed: () {
                      // Define the action for the FloatingActionButton here
                    },
                    backgroundColor: Colors.white,
                    shape: const CircleBorder(),
                    child: Center(
                      child: Column(
                        children: [
                        //  SizedBox(height: screenHeight * 0.02),
                          Icon(Icons.all_inclusive, color: const Color(0xFFC1272D), size: screenHeight * 0.04),
                          Text('HIREMI', style: TextStyle(fontSize: screenHeight * 0.012, fontWeight: FontWeight.bold)),
                          Text('360', style: TextStyle(fontSize: screenHeight * 0.012, color: const Color(0xFFC1272D))),
                        ],
                      ),
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
