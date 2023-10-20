

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/features/landing_page/landing_page.dart';
import 'package:shop/features/login/controller/login_controller.dart';
import 'package:shop/features/register/model/register_model.dart';
import 'package:shop/service/network_handler/network_handler.dart';

class RegisterController extends GetxController{

TextEditingController passwordTextController = TextEditingController();
TextEditingController fullNameTextController = TextEditingController();
TextEditingController emailTextController = TextEditingController();
TextEditingController mobileNumberTextController = TextEditingController();
TextEditingController hintTextController = TextEditingController();
RxString gender = "".obs;
var loginController = Get.find<LoginController>();

void register()async{
  RegisterModel registerModel = RegisterModel(
     mobileNum: loginController.loginEditingController.text,
     password: passwordTextController.text, 
     gender: gender.value,
     alternateMobileNumber: mobileNumberTextController.text,
     email: emailTextController.text,
     fullName: fullNameTextController.text,
     hint: hintTextController.text
     );
  var response = await NetworkHandler.post(registerModelToJson(registerModel), "register");
  print(response);
  var data = json.decode(response);
   if (data.containsKey("token") && data["token"] != null) {
    await NetworkHandler.storeToken(data["token"]);
    Get.offAll(Landing_Page());
  } else {
    print("Token is missing in the register response or is null.");
  }
}}










































