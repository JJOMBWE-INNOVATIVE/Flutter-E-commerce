


import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Column (children: [
        Container(
          height: MediaQuery.sizeOf(context).height/3,
        child: Stack(
          children: [
            Container(
              color:Colors.red
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
                child: const Row(
                  children: [
                    Text("4",style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),),
                    SizedBox(width: 3,),
                    Icon(Icons.star,size: 13,),
                    SizedBox(width: 3,),
                    Text("|"),
                    SizedBox(width: 3,),
                    Text("4.2k",style: TextStyle(
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
        Padding(padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("T-shirt",style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600
                ),),
                 SizedBox(height: 2,),
                Text("T-shirt of pure cotton",style: TextStyle(
                  color: Colors.grey,
                ),),
                 SizedBox(height: 2,),
                Row(
                  children: [
                    Text("\u{0024}400",style: TextStyle(
                  color: Colors.grey,
                  decoration: TextDecoration.lineThrough,
                ),),
                    Text("   \u{0024}200"),
                    Text(" 50%oFF",style: TextStyle(
                      color: Colors.orange, 
                    )),
                  ],
                ),
              ],
            ),
            IconButton(onPressed: (){}, icon:Icon( Icons.favorite_outline)),
          ],
        ),      
        ),
        
      ]),
    );
  }
}