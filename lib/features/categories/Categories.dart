
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
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Container(
          padding:const EdgeInsets.symmetric(horizontal: 10),
          child: const Text("Categories",
          style:TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black45
          ),
          ),
          ),
          actions: [
              IconButton(
                onPressed: (){}, 
              icon:const Icon(
                Icons.favorite_outline,
                color: Colors.black,
              ),
              ),
              IconButton(
                onPressed: (){}, 
              icon:const Icon(
                Icons.shopping_bag_outlined,
                color: Colors.black,
              ),
              ),
          ],
        centerTitle: false,   
      ),
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








