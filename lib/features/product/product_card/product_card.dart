


import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shop/features/product/model/product_details_model.dart';

class ProductCard extends StatelessWidget {
 const ProductCard({super.key, required this.item});
  final ProductDetailItem item;

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: MediaQuery.sizeOf(context).width/2,
      child: Card(
        margin: const EdgeInsets.only(right: .3),
        child: Column (
          children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height/3,
          child: Stack(
            children: [
            CachedNetworkImage(
            imageUrl: "http://10.0.2.2:3001/uploads/product_images/${item.imageUrl}.jpeg",
            placeholder: (context, url) => const Center(child:CircularProgressIndicator()),
            imageBuilder: (context, imageProvider) {
              print("Image successfully loaded.");
              return Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.fill
                  ),
                ),
              );
            },
          ),
              Positioned(
                bottom: 10,
                left: 8,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 14,vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(10),
                    color: Colors.white70
                  ),
                  child: Row(
                    children: [
                      Text(
                        item.rating??"",
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),),
                      const SizedBox(width: 3,),
                     const Icon(Icons.star,size: 13,),
                     const SizedBox(width: 3,),
                     const Text("|"),
                     const SizedBox(width: 3,),
                      Text(
                        item.review??""
                      ,style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),),
                    ],
                  ),
                ),
              ),
            ],
          ),
          ),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Flexible(
                flex: 1,
                 child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.name,
                      style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300
                    ),),
                    const SizedBox(height: 2,),
                    Text(
                      item.desc,
                      style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                    ),),
                    const SizedBox(height: 2,),
                    Row(
                      children: [
                        Text(
                          " \u{0024}${item.actualPrice}",
                          style: const TextStyle(
                            fontSize: 13,
                      color: Colors.grey,
                      decoration: TextDecoration.lineThrough,
                    ),),
                        Text(" \u{0024}${item.discountedPrice}"),
                        const SizedBox(width: 1,),
                        Text(
                          "${item.discount}%oFF",
                        style: const TextStyle(
                          color: Colors.orange, 
                          fontSize: 10,
                        )),
                      ],
                    ),
                  ],
                ),
               ),
              IconButton(
                onPressed: (){}, 
                icon:const Icon( Icons.favorite_outline)),
            ],
          ),      
          ), 
        ]),
      ),
    );
  }
}