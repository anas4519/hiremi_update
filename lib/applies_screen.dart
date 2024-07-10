import 'package:flutter/material.dart';

class AppliesScreen extends StatefulWidget {
  const AppliesScreen({Key? key}) : super(key: key);

  @override
  State<AppliesScreen> createState() => _AppliesState();
}

class _AppliesState extends State<AppliesScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Applies",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Padding(
              padding: EdgeInsets.all(3.0),
              child: Image(
                image: AssetImage('images/Empty-bro.png'),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.01,
            ),
            const Text(
              'No Applies, Select from Hiremi’s Featured to',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              textAlign: TextAlign.center,
            ),
            const Text(
              'start your journey today.',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(color: Colors.orange,width: screenWidth*0.005),
                    ),
                    child: const Stack(alignment: Alignment.centerLeft, children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Image(
                            image: AssetImage('images/Group 170.png')),
                      ),
                      Positioned(
                        left: 36.0, // Adjust position as needed
                        child: Text('Internships',
                            style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.orange,
                                fontWeight: FontWeight.bold)),
                      ),
                    ]),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(
                          color: Colors.red, width: screenWidth*0.005),
                    ),
                    child: const Stack(alignment: Alignment.centerLeft, children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Image(
                            image: AssetImage('images/Group 170 (1).png')),
                      ),
                      Positioned(
                        left: 36.0, // Adjust position as needed
                        child: Text('Fresher Jobs',
                            style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.red,
                                fontWeight: FontWeight.bold)),
                      ),
                    ]),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(
                          color: Colors.purpleAccent,
                          width: screenWidth*0.005),
                    ),
                    child: const Stack(alignment: Alignment.centerLeft, children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Image(
                            image: AssetImage('images/Group 170 (2).png')),
                      ),
                      Positioned(
                        left: 36.0, // Adjust position as needed
                        child: Text('Experienced Jobs',
                            style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.purpleAccent,
                                fontWeight: FontWeight.bold)),
                      ),
                    ]),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}