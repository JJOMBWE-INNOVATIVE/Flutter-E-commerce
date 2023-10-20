import 'package:flutter/material.dart';
import 'package:shop/theme/colors.dart';

class SpTextButton extends StatelessWidget {
  const SpTextButton({Key? key,
  required this.text
  }):super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return  Material(
      color: Colors.white,
      child: InkWell(
        onTap: (){},
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 15,horizontal: 60),
          width: MediaQuery.sizeOf(context).width,
          child:  Text(text,style: TextStyle(
            fontSize: 11.8,
            fontWeight: FontWeight.w600,
            color: AppColor.heading6,
          ),),

        ),
      ),
    );
  }
}
