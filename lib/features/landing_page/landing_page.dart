
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/features/categories/Categories.dart';
import 'package:shop/features/home_page/home_page.dart';
import 'package:shop/features/landing_page/controller/LandingPage-Controller.dart';
import '../../foundation/sp_icon/sp_icon.dart';
import '../profile/profile.dart';


class Landing_Page extends StatefulWidget {
  const Landing_Page({super.key});

  @override
  State<Landing_Page> createState() => _Landing_PageState();
}

class _Landing_PageState extends State<Landing_Page> {
  int currentIndex = 0;
  List<Widget> pages = [const HomePage(),const Categories(),const Profile()];
  var landingPageController = Get.put(LandingPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        selectedItemColor: const Color(0xfffe416c),
        selectedLabelStyle: const TextStyle(
          fontSize: 13,

        ),
        onTap: (index){
          setState(() {
            currentIndex = index;
          });
        },
        items: [
        BottomNavigationBarItem(icon: SpIcon( assetname: "logo-black.png",isSelected:0 == currentIndex, ),
          label: "Home"
        ),
        BottomNavigationBarItem(icon: SpIcon( assetname: "categories.png",isSelected:1 == currentIndex, ),
            label: "Categories"
        ),
        BottomNavigationBarItem(icon: SpIcon( assetname: "profile.png",isSelected:2 == currentIndex, ),
            label: "Profile"
        ),],
      ),
      body: pages[currentIndex],
    );
  }
}




