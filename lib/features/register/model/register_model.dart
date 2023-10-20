

import 'dart:convert';

RegisterModel registerModelFromJson(String str) => RegisterModel.fromJson(json.decode(str));

String registerModelToJson(RegisterModel data) => json.encode(data.toJson());

class RegisterModel {
    String mobileNum;
    String password;
    String? fullName;
    String? email;
    String gender;
    String? alternateMobileNumber;
    String? hint;

    RegisterModel({
        required this.mobileNum,
        required this.password,
        this.fullName,
        this.email,
        required this.gender,
        this.alternateMobileNumber,
        this.hint,
    });

    factory RegisterModel.fromJson(Map<String, dynamic> json) => RegisterModel(
        mobileNum: json["mobileNum"],
        password: json["password"],
        fullName: json["fullName"],
        email: json["email"],
        gender: json["gender"],
        alternateMobileNumber: json["alternateMobileNumber"],
        hint: json["hint"],
    );

    Map<String, dynamic> toJson() => {
        "mobileNum": mobileNum,
        "password": password,
        "fullName": fullName,
        "email": email,
        "gender": gender,
        "alternateMobileNumber": alternateMobileNumber,
        "hint": hint,
    };
}
