
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/features/login/controller/login_controller.dart';
import 'package:shop/theme/colors.dart';

import '../../foundation/sp_solid_button/sp_solid_button.dart';

class LoginBottomSheet extends StatelessWidget {
   LoginBottomSheet({super.key});
  var loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.sizeOf(context).height/2,
        color: AppColor.whiteColor,
        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/images/logo-big.png",
                height: 45,
                width: 45,
                ),
                IconButton(
                    onPressed: (){
                      Get.back();
                    },
                    icon: const Icon(Icons.clear,
                      size: 30,
                    ),
                ),
              ],
            ),
            const SizedBox(height: 32,),
            RichText(text: const TextSpan(
              children: [
                TextSpan(text: "Login",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
                ),
                TextSpan(text: " or ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
                TextSpan(text: "Signup",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            ),
            const SizedBox(height: 32,),
             SizedBox(
              height: 43,
              child: TextField(
                keyboardType: TextInputType.number,
                style:const TextStyle(
                  color: AppColor.captionColor,
                  fontSize: 13,
                ),
                controller:loginController.loginEditingController ,
                decoration: const InputDecoration(
                  labelText: "Mobile Number*",
                  labelStyle: TextStyle(
                    color: Colors.black54,
                    fontSize: 13,
                  ),
                  prefix: Padding(
                    padding: EdgeInsets.only(left: 10,top: 5),
                    child: Text("+256 | ",
                      style:TextStyle(
                        color: Colors.black54,
                        fontSize: 13,
                      ),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: AppColor.captionColor,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1.5,
                      color: Colors.black54,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 25,),
            RichText(text: const TextSpan(
              children: [
                TextSpan(text: "By continuing, I agree to the",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 12,
                  ),
                ),
                TextSpan(text: " Term of Use ",
                  style: TextStyle(
                    color: AppColor.buttonColor,
                    fontSize: 13,
                    fontWeight: FontWeight.bold
                  ),
                ),
                TextSpan(text: " & ",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 12,
                  ),
                ),
                TextSpan(text: "Privacy & Policy",
                  style: TextStyle(
                      color: AppColor.buttonColor,
                      fontSize: 13,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
            ),
            const SizedBox(height: 30,),
             SpSolidButton(
              text: "CONTINUE",minusWidith: 0,
              onPressed: loginController.login, minusWidth: 0,
              ),
            const SizedBox(height: 32,),
            RichText(text: const TextSpan(
              children: [
                TextSpan(text: "Having trouble logging in? ",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 13,
                  ),
                ),
                TextSpan(text: " Get help ",
                  style: TextStyle(
                      color: AppColor.buttonColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
            ),
          ],
        ),
      ),
    );
  }
}




