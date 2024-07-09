import 'package:flutter/material.dart';
import 'package:hiremi_version_two/Custom_Widget/Custom_alert_box.dart';
import 'package:hiremi_version_two/Fresher_Jobs.dart';
import 'package:hiremi_version_two/InternshipDetailScreen.dart';

class OpportunityCard extends StatelessWidget {
  final Image dp;
  final String role;
  final String company;
  final String location;
  final String stipend;
  final String mode;
  final String type;
  final int exp;
  final int daysPosted;

  OpportunityCard({
    Key? key,
    required this.dp,
    required this.role,
    required this.company,
    required this.location,
    required this.stipend,
    required this.mode,
    required this.exp,
    required this.type,
    required this.daysPosted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isVerified=false;
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.all(width*0.03),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: width*0.07,
                backgroundColor: Colors.white,
                child: dp,
              ),
              SizedBox(width: width*0.02),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    role,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                  SizedBox(height:height*0.015),
                  Text(
                    company,
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize:height*0.015),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: height*0.015),
          // Location and stipend
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.location_on_rounded, color: Colors.grey, size: 14.0),
                  SizedBox(width: width*0.02),
                  Text(
                    location,
                    style: TextStyle(fontSize: height*0.018),
                  ),
                ],
              ),
              SizedBox(height: height*0.012),
              Row(
                children: [
                  Icon(Icons.attach_money_rounded, color: Colors.grey, size: 14.0),
                  SizedBox(width: width*0.015),
                  Text(
                    stipend,
                    style: TextStyle(fontSize: height*0.016),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: height*0.013),
          Row(
            children: [
              Container(
                height: height*0.025,
                width: width*0.162,
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                decoration: const BoxDecoration(
                  color: Color(0xFFFFF6E5),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.work_rounded, size: width*0.011, color: Colors.amber),
                    SizedBox(width: width*0.01),
                    Text(mode, style: TextStyle(fontSize:  width*0.015, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              SizedBox(width: width*0.01),
              Container(
                height: height*0.025,
                width: width*0.182,
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                decoration: const BoxDecoration(
                  color: Color(0xFFFFEEE5),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.alarm, size: width*0.011, color: Colors.red),
                    SizedBox(width: width*0.01),
                    Text(type, style: TextStyle(fontSize: width*0.015, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              SizedBox(width:width*0.01),
              Container(
                height: height*0.025,
                width: width*0.158,
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                decoration: const BoxDecoration(
                  color: Color(0xFFFFE5EE),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.work_rounded, size: height*0.0069, color: Color(0xFFED509B)),
                    SizedBox(width:width*0.001),
                    Text('$exp Year Exp', style: TextStyle(fontSize: width*0.012, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  if (isVerified) {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                              contentPadding: EdgeInsets.zero,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              content: const CustomAlertbox());
                        });
                  }
                  else{
                    if(type == 'Job'){
                      Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=> const FresherJobsScreen()));
                    }
                    else{
                      Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=> const InternshipsDetailsScreen()));
                    }

                  }
                },
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFFC1272D)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0), // Border radius
                    ),
                  ),
                ),
                child: Text('Apply Now >', style: TextStyle(fontSize: 12.0)),
              )
            ],
          ),
          SizedBox(height: height*0.0065),
          Container(
            width: double.infinity, // Responsive length of the horizontal line
            height: 1, // Thickness of the line
            color: Colors.grey, // Color of the line
          ),
          SizedBox(height: 16.0),
          Row(
            children: [
              Icon(Icons.track_changes_outlined, color: Colors.green, size:height*0.0199),
              Text('Actively Recruiting', style: TextStyle(color: Colors.green, fontSize: 14.0)),
              const Spacer(),
              Icon(Icons.av_timer, color: Colors.grey, size: 16.0),
              Text('$daysPosted days ago', style: TextStyle(color: Colors.grey, fontSize: 14.0)),
            ],
          ),
        ],
      ),
    );
  }
}
