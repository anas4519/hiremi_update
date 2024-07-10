import 'package:flutter/material.dart';
import 'package:hiremi_version_two/Custom_Widget/BasicDetails.dart';
import 'package:hiremi_version_two/Custom_Widget/Education.dart';
import 'package:hiremi_version_two/Custom_Widget/Experience.dart';
import 'package:hiremi_version_two/Custom_Widget/KeySkills.dart';
import 'package:hiremi_version_two/Custom_Widget/Languages.dart';
import 'package:hiremi_version_two/Custom_Widget/PersonalInfo.dart';
import 'package:hiremi_version_two/Custom_Widget/PersonalLinks.dart';
import 'package:hiremi_version_two/Custom_Widget/ProfileStatusSection.dart';
import 'package:hiremi_version_two/Custom_Widget/ProfileSummary.dart';
import 'package:hiremi_version_two/Custom_Widget/Projects.dart';
import 'package:hiremi_version_two/Custom_Widget/drawer_child.dart';
import 'package:hiremi_version_two/Notofication_screen.dart';
import 'package:hiremi_version_two/Utils/AppSizes.dart';
import 'package:hiremi_version_two/Utils/colors.dart';



class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (ctx) => const NotificationScreen(),
              ));
            },
            icon: const Icon(Icons.notifications),
          ),
        ],
        
      ),
      drawer: const Drawer(
        child: DrawerChild(),
      ),
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              left: Sizes.responsiveDefaultSpace(context),
              right: Sizes.responsiveDefaultSpace(context),
              bottom: kToolbarHeight),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ProfileStatusSection(),
              SizedBox(
                height: Sizes.responsiveMd(context),
              ),
              Divider(
                height: 0.25,
                thickness: 0.5,
                color: AppColors.secondaryText,
              ),
              SizedBox(
                height: Sizes.responsiveMd(context),
              ),
              const BasicDetails(),
              SizedBox(
                height: Sizes.responsiveMd(context),
              ),
              const ProfileSummary(),
              SizedBox(
                height: Sizes.responsiveMd(context),
              ),
              const KeySkills(),
              SizedBox(
                height: Sizes.responsiveMd(context),
              ),
              const Education(),
              SizedBox(
                height: Sizes.responsiveMd(context),
              ),
              const Experience(),
              SizedBox(
                height: Sizes.responsiveMd(context),
              ),
              const Projects(),
              SizedBox(
                height: Sizes.responsiveMd(context),
              ),
              const PersonalInfo(),
              SizedBox(
                height: Sizes.responsiveMd(context),
              ),
              const PersonalLinks(),
              SizedBox(
                height: Sizes.responsiveMd(context),
              ),
              const Languages(),
              const SizedBox(height: 70,)
            ],
          ),
        ),
      ),
    );
  }
}


