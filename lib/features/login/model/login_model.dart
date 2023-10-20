

import 'dart:convert';

LoginModel loginModelFromJson(String str) => LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
    String mobileNum;

    LoginModel({
        required this.mobileNum,
    });

    factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        mobileNum: json["mobileNum"],
    );

    Map<String, dynamic> toJson() => {
        "mobileNum": mobileNum,
    };
}

























