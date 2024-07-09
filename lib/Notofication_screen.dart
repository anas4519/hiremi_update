import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title:  Text(
      //     'Notfications',
      //     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      //   ),
      //   centerTitle: true,
      //   actions: [
      //     IconButton(
      //         onPressed: () {
      //           Navigator.of(context).pop();
      //         },
      //         icon: const Icon(Icons.notifications))
      //   ],
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/Mail-bro 1.png'),
             SizedBox(
              height: MediaQuery.of(context).size.height * 0.157,
            ),
            const Text(
              'NNN: No New Notifications!, Please Explore\nHiremi applications for a while.',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),

            )
          ],
        ),
      ),
    );
  }
}