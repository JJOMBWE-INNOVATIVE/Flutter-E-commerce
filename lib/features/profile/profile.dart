import 'package:flutter/material.dart';
import 'package:shop/theme/colors.dart';
import 'profile_without_login.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColor.scaffoldBGColor,
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text("Profile",style: Theme.of(context).textTheme.headline6,),
        ),
        backgroundColor: AppColor.whiteColor,
      ),
      body: const SingleChildScrollView(
          child: ProfileWithoutLogin(),
      ),
    );
  }
}
