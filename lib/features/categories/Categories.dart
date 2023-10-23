
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/features/categories/controller/category_controller.dart';
import 'package:shop/features/categories/ui/main_category.dart';
import 'package:shop/theme/colors.dart';


class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
var categoryController = Get.put(CategoryController());

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColor.scaffoldBGColor,
      body: SafeArea(child: Center(
        child: Obx(() {
          if(categoryController.loading==true){
            return const Center(child:CircularProgressIndicator());
          }
         return ListView.builder(
         itemCount: categoryController.mainCategoryList.length,
          itemBuilder: (contex,index){
          return  MainCategoryTile(
            mainCategory: categoryController.mainCategoryList[index],
          );
        },
        );
        },)      
        ),
        ),
    );
  }
}








