
import 'package:flutter/material.dart';
import 'package:shop/theme/colors.dart';


class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColor.scaffoldBGColor,
      body: SafeArea(child: Center(child: Text("Category"))),
    );
  }
}








