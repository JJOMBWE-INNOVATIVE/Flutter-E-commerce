
import 'package:flutter/material.dart';
import 'package:shop/theme/colors.dart';



class SpTextFormField extends StatelessWidget {
 const SpTextFormField({
  required this.labelText,
  this.validator,
  this.prefixIcon,
  this.textEditingController,
   Key? key,}) : super(key: key);

  final String labelText;
  final String? Function(String? value)? validator;
  final Widget? prefixIcon;
  final TextEditingController? textEditingController;

  @override
  Widget build(BuildContext context) {
    return   SizedBox(
          // height: 50,
           child:  TextFormField(
                  controller: textEditingController,
                  keyboardType: TextInputType.number,
                  style: const TextStyle(
                    color: AppColor.captionColor,
                    fontSize: 13,
                  ),
                  validator:validator,
                  decoration: InputDecoration(
                    labelText: labelText,
                    labelStyle: const TextStyle(
                      color: Colors.black54,
                      fontSize: 13,
                    ),
                    prefix: prefixIcon,
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: AppColor.captionColor,
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1.5,
                        color: Colors.black54,
                      ),
                    ),
                    errorBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.red,
                      ),
                    ),
                    focusedErrorBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
                );
 } 
 }        



































