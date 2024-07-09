import 'package:flutter/material.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final percent = 0.25;
    final per = percent * 100;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Profile",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications))
        ],
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // CircularPercentIndicator(
                  //   radius: 40,
                  //   lineWidth: 0,
                  //   percent: percent,
                  //   center: Text('$per%'),
                  //   progressColor: percent > 0.5 ? Colors.green : Colors.red,
                  // ),
                  const Text(
                    'Harsh Pawar',
                    style: TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 6,),
                  Container(
                    width: 90,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                          color: const Color(0xFFC1272D),
                        )),
                    child: const Padding(
                      padding: EdgeInsets.all(6.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.check_circle_outline_sharp,
                            color:  Color(0xFFC1272D),
                            size: 10,
                          ),
                          Text(
                            'Not verified',
                            style: TextStyle(color:  Color(0xFFC1272D), fontSize: 10),
                          )

                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 6,),
                  const Text(
                    'Last updated today',
                    style: TextStyle(
                        fontSize: 10, color: Colors.grey),
                  ),
                  const SizedBox(height: 6,),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                      backgroundColor: WidgetStateProperty.all<Color>(const Color(0xFFC1272D)),
                      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0), // Border radius
                        ),
                      ),
                    ),
                    child: const Text(
                      'Verify Now >',
                      style: TextStyle(fontSize: 10),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}