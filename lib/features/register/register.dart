import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/features/login/controller/login_controller.dart';
import 'package:shop/features/register/controller/register_controller.dart';
import 'package:shop/foundation/gender_button/gender_button.dart';
import 'package:shop/foundation/sp_solid_button/sp_solid_button.dart';
import 'package:shop/foundation/sp_text_field/sp_text_field.dart';
import 'package:shop/theme/colors.dart';

class Register extends StatelessWidget {
  Register({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormState>(); 
  var loginController = Get.find<LoginController>();
  var registerController = Get.put(RegisterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leading: IconButton(onPressed: () {
          Get.back();
        },
        icon: const Icon(Icons.arrow_back,
        color: Colors.black,
        
        ),),
        backgroundColor: Colors.white,
        title: const Text(
          "Complete your registration",
          style: TextStyle(
            color: Colors.black,fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
          ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 15),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Mobile Number",
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColor.captionColor
                            ),
                            ),
                             const SizedBox(height: 3),
                            Text(loginController.loginEditingController.text,
                            style: const TextStyle(color: Colors.black87),
                            ),
                          ],
                        ),
                        const CircleAvatar(
                          backgroundColor: Colors.teal,
                          radius: 12,
                          child: Icon(Icons.check,size: 20,
      
                          ),
                        ),
                      ],
                    ),
                  const SizedBox(height: 20),
                  SpTextFormField(    
                    textEditingController:registerController.passwordTextController,         
                    labelText: "Create password",
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Password can't be empty";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                    SpTextFormField(
                    textEditingController:registerController.fullNameTextController,  
                    labelText: "Full Name (Optional)",
                     ),
                  const SizedBox(height: 20),
                   SpTextFormField(
                    textEditingController:registerController.emailTextController,  
                    labelText: "Email (Optional)",
                  ),
                  const SizedBox(height: 20),
                   Obx(
                     () => GenderButton(
                      onGenderTap: onGenderTap,
                      genderValue: registerController.gender.value,
                                   ),
                   ),
                  const SizedBox(height: 20),
                    SpTextFormField(
                    textEditingController:registerController.mobileNumberTextController,  
                    labelText: "Alternate mobile number",
                    prefixIcon: const Padding(
                      padding: EdgeInsets.only(left: 10,top: 5),
                      child: Text("+256 | ",
                        style:TextStyle(
                          color: Colors.black54,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                   SpTextFormField(
                    textEditingController:registerController.hintTextController,  
                    labelText: "Hint name)",
                  ),
                  const SizedBox(height: 25),
                  SpSolidButton(
                    text: "CREATE ACCOUNT",
                    minusWidth: 0,
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        registerController.register();
                      }
                    }, minusWidith: 0,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  void onGenderTap(String gender){
    registerController.gender.value = gender;
  }
  
}
