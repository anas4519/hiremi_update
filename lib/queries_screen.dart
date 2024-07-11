import 'package:flutter/material.dart';

class QueriesScreen extends StatefulWidget {
  const QueriesScreen({Key? key}) : super(key: key);

  @override
  State<QueriesScreen> createState() => _QueriesScreenState();
}

class _QueriesScreenState extends State<QueriesScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            "Queries",
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
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(screenWidth*0.02),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                    child: Padding(
                  padding: EdgeInsets.all(screenHeight * 0.00),
                  child: Image.asset(
                    'images/At the office-pana.png',
                    
                  ),
                )),
                SizedBox(
                  height: screenHeight * 0.04,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: RichText(
                        text: const TextSpan(
                          text: 'Full Name', // First part of the text
                          style: TextStyle(
                            color: Colors.black, // Style for the first part
                            fontSize: 16.0,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: ' *', // Second part of the text
                              style: TextStyle(
                                color: Colors.red, // Style for the second part
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.01,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 2.0, 10.0, 0),
                      // Adjusted padding to remove space between label and text field
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Full Name',
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 10.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.02,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: RichText(
                        text: const TextSpan(
                          text: 'Email Address', // First part of the text
                          style: TextStyle(
                            color: Colors.black, // Style for the first part
                            fontSize: 16.0,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: ' *', // Second part of the text
                              style: TextStyle(
                                color: Colors.red, // Style for the second part
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.01,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 2.0, 10.0, 0),
                      // Adjusted padding to remove space between label and text field
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Email Address',
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 10.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.02,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: RichText(
                        text: const TextSpan(
                          text: 'Date of Birth', // First part of the text
                          style: TextStyle(
                            color: Colors.black, // Style for the first part
                            fontSize: 16.0,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: ' *', // Second part of the text
                              style: TextStyle(
                                color: Colors.red, // Style for the second part
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.01,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 2.0, 10.0, 0),
                      // Adjusted padding to remove space between label and text field
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.calendar_month,
                            color: Colors.green,
                          ),
                          hintText: 'Date of Birth',
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 10.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.02,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: RichText(
                        text: const TextSpan(
                          text: 'Query Type', // First part of the text
                          style: TextStyle(
                            color: Colors.black, // Style for the first part
                            fontSize: 16.0,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: ' *', // Second part of the text
                              style: TextStyle(
                                color: Colors.red, // Style for the second part
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.01,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 2.0, 10.0, 0),
                      // Adjusted padding to remove space between label and text field
                      child: TextFormField(
                        decoration: InputDecoration(
                          suffixIcon: const Icon(Icons.arrow_drop_down),
                          hintText: 'Career Problem',
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 10.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.02,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: RichText(
                        text: const TextSpan(
                          text: 'Discuss Your Problem (Optional)',
                          // First part of the text
                          style: TextStyle(
                            color: Colors.black, // Style for the first part
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.01,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 2.0, 10.0, 0),
                      // Adjusted padding to remove space between label and text field
                      child: TextFormField(
                        maxLines: 3,
                        decoration: InputDecoration(
                          hintText: 'Your Problem',
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 10.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight*0.02,),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.redAccent, // Background color
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        child: const Text(
                          'Generate Query',
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
