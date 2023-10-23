

import 'dart:convert';

import 'package:get/get.dart';
import 'package:shop/features/categories/model/main_category.dart';
import 'package:shop/service/network_handler/network_handler.dart';

import '../model/super_category.dart';

class CategoryController extends GetxController{
  RxBool loading = false.obs;
 List<MainCategory> mainCategoryList = [];

@override
  void onInit() {
    super.onInit();
    fetchCategory();
  }
void fetchCategory()async{
  loading(true);
var response = await NetworkHandler.get("getCategory" , "");
mainCategoryList = SuperCategory.fromJson((json.decode(response))).data;
loading(false);
}
 

}

