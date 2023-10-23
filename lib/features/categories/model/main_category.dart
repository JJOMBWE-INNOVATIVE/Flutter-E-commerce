
import 'package:shop/features/categories/model/sub_category_model.dart';


class MainCategory {
    String id;
    String name;
    String description;
    String imageUrl;
    String backgroundColor;
    List<SubCategory> subCategory;
  

    MainCategory({
        required this.id,
        required this.name,
        required this.description,
        required this.imageUrl,
        required this.backgroundColor,
        required this.subCategory,
    });

    factory MainCategory.fromJson(Map<String, dynamic> json) => MainCategory(
        id: json["_id"],
        name: json["name"],
        description: json["description"],
        imageUrl:json["imageUrl"],
        backgroundColor: json["backgroundColor"],
        subCategory: List<SubCategory>.from(json["subCategory"].map((x) => SubCategory.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "description": description,
        "imageUrl":imageUrl,
        "backgroundColor": backgroundColor,
        "subCategory": List<dynamic>.from(subCategory.map((x) => x.toJson())),
    };
}

