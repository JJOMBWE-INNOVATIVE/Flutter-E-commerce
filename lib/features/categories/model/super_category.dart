

import 'dart:convert';

import 'package:shop/features/categories/model/main_category.dart';



SuperCategory superCategoryFromJson(String str) => SuperCategory.fromJson(json.decode(str));

String superCategoryToJson(SuperCategory data) => json.encode(data.toJson());

class SuperCategory {
    List<MainCategory> data;

    SuperCategory({
        required this.data,
    });

    factory SuperCategory.fromJson(Map<String, dynamic> json) => SuperCategory(
        data: List<MainCategory>.from(json["data"].map((x) => MainCategory.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}



