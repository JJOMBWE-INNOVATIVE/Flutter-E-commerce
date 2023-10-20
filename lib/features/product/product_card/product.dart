

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shop/features/product/controller/product_details_controller.dart';
import 'package:shop/features/product/product_card/product_card.dart';

class Product extends StatelessWidget {
   Product({super.key});
var productDetailsController = Get.put(ProductDetailsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){}, 
          icon: const Icon(Icons.arrow_back,
          ),
          color: Colors.black,
          ),
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("MEN APPAREL",
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
            ),
            SizedBox(height: 2,),
            Text("1234 items",style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.grey,
            ),),
          ],
        ),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: (){},
             icon: const Icon(Icons.search,
             color: Colors.black,
             size: 28,
             ),
             ),
             IconButton(
            onPressed: (){},
             icon: const Icon(Icons.favorite_outline,
             color: Colors.black,
             size: 28,
             ),
             ),
             IconButton(
            onPressed: (){},
             icon: const Icon(Icons.shopping_bag_outlined,
             color: Colors.black,
             size: 28,
             ),
             ),
        ],
      ),
      body: Obx(() =>
      productDetailsController.isLoading.value?
      const Center(child: CircularProgressIndicator()) :ListView.builder(
        itemCount: productDetailsController.productList.length,
        itemBuilder: (contex,index){
          return const ProductCard();
        },
        ), 
        )   
    );
  }
}