import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/features/landing_page/landing_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Delay navigation to the Landing Page
    Future.delayed(Duration(seconds: 2), () {
      Get.off(() => Landing_Page());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/logo-big.png",
              height: 200,
              width: 200,
            ),
            const SizedBox(
              height: 20, // Adjust the spacing as needed
            ),
            const Text(
              "Shopping App",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 42,
              ),
            ),
            const Text(
              "(Inspired by Integrin)",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
