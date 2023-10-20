

import 'package:flutter/material.dart';
import 'package:shop/theme/colors.dart';

class GenderButton extends StatelessWidget {
   GenderButton({Key? key,
  required this.onGenderTap,
  required this.genderValue
  }):super(key: key);

  final Function(String value) onGenderTap;
  final genderValue;
  final TextStyle textStyle = TextStyle(color: Colors.white);
  final TextStyle textStyleDark = TextStyle(color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(width: 1,
        color: AppColor.captionColor,
        ),
      ),
      child: Row(
        children: [
          Flexible(
            flex: 1,
            child: InkWell(
              onTap: () {
                onGenderTap("Female");
              },
              child: Container(
                color: genderValue=="Female"? AppColor.buttonColor:Colors.white,
                child: Center(child: Text("Female",style: genderValue=="Female"? textStyle:textStyleDark)),
                ),
            ),
              ),
              const VerticalDivider( width: 3,color: Colors.black,),
              Flexible(
            flex: 1,
            child: InkWell(
              onTap: () {
                onGenderTap("Male");
              },
              child: Container(
                color: genderValue=="Male"? AppColor.buttonColor:Colors.white,
                child: Center(child: Text("Male",style: genderValue=="Male"? textStyle:textStyleDark,)),
            
                ),
            ),
              ),
              const VerticalDivider( width: 3,color: Colors.black,),
              Flexible(
            flex: 1,
            child: InkWell(
              onTap: () {
                onGenderTap("Rather not say" );
              },
              child: Container(
                color: genderValue=="Rather not say"? AppColor.buttonColor:Colors.white,
                child: Center(child: Text("Rather not say",style: genderValue=="Rather not say"? textStyle:textStyleDark)),
            
                ),
            ),
              ),
        ],
      ),
    );
  }
}




















