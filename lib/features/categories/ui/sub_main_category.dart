

import 'package:flutter/material.dart';
import 'package:shop/features/categories/model/sub_category_model.dart';
import 'package:shop/features/categories/ui/last_category.dart';

class SubMainCategoryTile extends StatelessWidget {
  const SubMainCategoryTile({super.key,required this.subCategory});
  final SubCategory subCategory;

  @override
  Widget build(BuildContext context) {
    Widget title = Text(
        subCategory.name,
      style: const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w600,
        fontSize: 18,
      ),
      );
      Widget leading = Container(
        padding: const EdgeInsets.only(top: 5,bottom: 7,left: 20,right: 10),
        width: 80,
        height: 90,
        child: Image.network("http://10.0.2.2:3001/uploads/categories_images/${subCategory.imageUrl}"),
        );
    return subCategory.isExpandable? ExpansionTile( 
      textColor: Colors.black,
      iconColor: Colors.black,
      title:title,
      leading: leading,
        children: subCategory.leafCategory.map((item) => LastCategoryTile(
        leafCategory: item,
      )).toList()
    ): ListTile(
      onTap: (){},
      title:title,
      leading: leading,
    );
  }
}