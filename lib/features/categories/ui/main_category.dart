

import 'package:flutter/material.dart';
import 'package:shop/features/categories/model/main_category.dart';
import 'package:shop/features/categories/ui/sub_main_category.dart';



class MainCategoryTile extends StatelessWidget {
  const MainCategoryTile({super.key,required this.mainCategory});
  final MainCategory mainCategory;

  @override
  Widget build(BuildContext context) {
    return  ExpansionTile(
      collapsedBackgroundColor:Color(int.parse(mainCategory.backgroundColor)),
      iconColor: Colors.black,
      title: Container(
        padding: const  EdgeInsets.symmetric(horizontal: 10),
        height: 130,
       child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           Flexible(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: Text(
                        mainCategory.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.black
                        ),
                      ),
                    ),
                     const Icon(Icons.arrow_drop_down,size: 30,
                     ),
                  ],
                ),
              Text(
                mainCategory.description,
              style: const TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 15,
                color: Colors.black
              ),
              ),
              ],
            ),
          ),
                  const SizedBox(width: 10),
                  Image(
          image: NetworkImage("http://10.0.2.2:3001/uploads/categories_images/${mainCategory.imageUrl}"),
          width: 100,
          loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
            if (loadingProgress == null) {
              return child;
            }
            return Center(
              child: CircularProgressIndicator(
                value: loadingProgress.expectedTotalBytes != null
                    ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
                    : null,
              ),
    );
  },
)

        ],
       ),
        ),
        trailing: const SizedBox.shrink(),
      children: mainCategory.subCategory.map((item) => SubMainCategoryTile(
        subCategory: item,
      )).toList()
    );
  }
}