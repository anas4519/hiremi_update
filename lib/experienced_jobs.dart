import 'package:flutter/material.dart';
import 'package:hiremi_version_two/Notofication_screen.dart';
import 'package:hiremi_version_two/Utils/colors.dart';

class Experienced_Jobs extends StatefulWidget {
  const Experienced_Jobs({
    Key? key,
  }) : super(key: key);

  @override
  State<Experienced_Jobs> createState() => _Experienced_JobsState();
}

class _Experienced_JobsState extends State<Experienced_Jobs> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Experienced Jobs",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (ctx) => const NotificationScreen(),
              ));
            },
            icon: const Icon(Icons.notifications_outlined),
            style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(AppColors.bgBlue)),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset('images/Frame 110.png'),
          ),
          Image.asset('images/Team work-bro.png'),
          SizedBox(
            height: screenHeight * 0.01,
          ),
          const Text(
            'Hiremi’s Recruiters are planning for new jobs',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
            textAlign: TextAlign.center,
          ),
          const Text(
            'please wait for few days',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
