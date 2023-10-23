

import 'package:flutter/material.dart';
import 'package:shop/features/categories/model/leaf_category_model.dart';

class LastCategoryTile extends StatelessWidget {
  const LastCategoryTile({super.key,required this.leafCategory});
  final LeafCategory leafCategory;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        padding: const EdgeInsets.only(left: 94,top: 15,bottom: 10,right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [       
            Text(
              leafCategory.name,
            style:const TextStyle(fontSize: 15),
            ),
          const Divider(thickness: 1,),
          ],
        ),
      ),
    );
  }
}