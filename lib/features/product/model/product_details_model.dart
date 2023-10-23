

import 'dart:convert';

ProductDetailsModel productDetailsModelFromJson(String str) => ProductDetailsModel.fromJson(json.decode(str));

String productDetailsModelToJson(ProductDetailsModel data) => json.encode(data.toJson());

class ProductDetailsModel {
    List<ProductDetailItem> data;

    ProductDetailsModel({
        required this.data,
    });

    factory ProductDetailsModel.fromJson(Map<String, dynamic> json) => ProductDetailsModel(
        data: List<ProductDetailItem>.from(json["data"].map((x) => ProductDetailItem.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class ProductDetailItem {
    String id;
    String name;
    String desc;
    String? wishlisted;
    String actualPrice;
    String discountedPrice;
    String discount;
    String category;
    String subCategory;
    String type;
    String genre;
    String brand;
    String imageUrl;
    String? rating;
    String? review;


    ProductDetailItem({
        required this.id,
        required this.name,
        required this.desc,
        this.wishlisted,
        required this.actualPrice,
        required this.discountedPrice,
        required this.discount,
        required this.category,
        required this.subCategory,
        required this.type,
        required this.genre,
        required this.brand,
        required this.imageUrl,
        this.rating,
        this.review
    });

    factory ProductDetailItem.fromJson(Map<String, dynamic> json) => ProductDetailItem(
        id: json["_id"],
        name: json["name"],
        desc: json["desc"],
        wishlisted: json["wishlisted"],
        actualPrice: json["actual_price"],
        discountedPrice: json["discounted_price"],
        discount: json["discount"],
        category: json["category"],
        subCategory: json["sub_category"],
        type: json["type"],
        genre: json["genre"],
        brand: json["brand"],
        imageUrl: json["image_url"],
        rating: json["rating"],
        review: json["review"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "desc": desc,
        "wishlisted": wishlisted,
        "actual_price": actualPrice,
        "discounted_price": discountedPrice,
        "discount": discount,
        "category": category,
        "sub_category": subCategory,
        "type": type,
        "genre": genre,
        "brand": brand,
        "image_url": imageUrl,
        "rating": rating,
        "review":review
    };
}
