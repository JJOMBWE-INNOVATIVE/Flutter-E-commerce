

import 'dart:convert';

import 'package:get/get.dart';
import 'package:shop/service/network_handler/network_handler.dart';
import '../model/product_details_model.dart';



class ProductDetailsController extends GetxController{
  RxBool isLoading = false.obs;
  List<ProductDetailItem> productList = [];

  @override
  void onInit() {
    super.onInit();
    getProductDetails();
  }

getProductDetails()async{
  isLoading (true);
  var respose = await NetworkHandler.get("getAll", "");
  ProductDetailsModel data = ProductDetailsModel.fromJson(json.decode(respose));
  print(data.data);
  productList = data.data;
  isLoading (false);
}

}