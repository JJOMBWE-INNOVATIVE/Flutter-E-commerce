import 'package:flutter/material.dart';

import '../../theme/colors.dart';

class SpSolidButton extends StatelessWidget {
  const SpSolidButton({
    Key? key,
    required this.text,
    this.onPressed,
    required this.minusWidith, required int minusWidth

  }) : super(key: key);
  final String text;
  final Function()? onPressed;
  final num minusWidith;

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0),
        backgroundColor: MaterialStateProperty.all(AppColor.buttonColor),
        textStyle: MaterialStateProperty.all(
          const TextStyle(
            fontSize: 12.5,fontWeight: FontWeight.w600,
          ),
        ),
      ),
      child: Container(
        width: MediaQuery.sizeOf(context).width -minusWidith,
        height: 45,
        child:  Center(
          child: Text(text,style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}
