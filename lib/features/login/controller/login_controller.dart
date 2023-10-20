
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shop/features/landing_page/landing_page.dart';
import 'package:shop/features/login/model/login_model.dart';
import 'package:shop/features/register/register.dart';
import 'package:shop/service/network_handler/network_handler.dart';

class LoginController extends GetxController {
  TextEditingController loginEditingController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    login();
  }

 void login() async {
  LoginModel loginModel = LoginModel(mobileNum: loginEditingController.text);
  var response = await NetworkHandler.post(loginModelToJson(loginModel), "login");
  var data = json.decode(response);
  if (data["msg"] == "Register") {
    Get.to(Register());
  } else  {
    await NetworkHandler.storeToken(data["token"]);
    Get.offAll(const Landing_Page());
  } }
}























