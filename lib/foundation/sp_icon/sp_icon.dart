
import 'package:flutter/material.dart';

class SpIcon extends StatelessWidget {
  const SpIcon({Key? key,
    required this.assetname,
     this.isSelected=false,
  }) : super(key: key);

  final String assetname;
  final bool isSelected;


  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/images/$assetname",
    height: 25,
      width: 25,
      color:isSelected ?const Color(0xfffe416c):Colors.black,

    );
  }
}
