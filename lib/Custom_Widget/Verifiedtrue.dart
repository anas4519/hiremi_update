import 'package:flutter/material.dart';

class VerifiedProfileWidget extends StatelessWidget {
  final String name;
  final String appId;

  const VerifiedProfileWidget({
    Key? key,
    required this.name,
    required this.appId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double containerSize = MediaQuery.of(context).size.width * 0.15;
    double iconSize = containerSize * 0.65;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: containerSize,
          height: containerSize,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFFFBEEEE), // Container background color
          ),
          child: Center(
            child: Icon(
              Icons.person,
              size: iconSize,
              color: Colors.redAccent, // Icon color
            ),
          ),
        ),
        SizedBox(width: containerSize * 0.1),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.02),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hi, $name",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.width * 0.05,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.005 ),
                Row(
                  children: [
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width *0.01),
                      child: Icon(
                        Icons.fingerprint,
                        size: MediaQuery.of(context).size.width * 0.04,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      "App Id: $appId",
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.03,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: MediaQuery.of(context).size.width * 0.02), // Adjust spacing between text and "Verified" container
        Padding(
          padding:  EdgeInsets.only(top:  MediaQuery.of(context).size.width *0.02),
          child: VerifiedContainer(),
        ),
      ],
    );
  }
}

class VerifiedContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double containerSize = MediaQuery.of(context).size.width * 0.15;

    return Container(
      width: containerSize * 1.28,
      height: containerSize * 0.43,
      decoration: BoxDecoration(
        color: Color(0xFF34AD78), // Background color
        borderRadius: BorderRadius.circular(12), // Circular edges
      ),
      child: Center(
        child: Text(
          "Verified",
          style: TextStyle(
            color: Colors.white, // Text color
            fontWeight: FontWeight.bold,
            fontSize: MediaQuery.of(context).size.width * 0.035,
          ),
        ),
      ),
    );
  }
}
