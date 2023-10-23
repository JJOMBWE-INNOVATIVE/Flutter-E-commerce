


class LeafCategory {
    String name;
    String id;

    LeafCategory({
        required this.name,
        required this.id,
    });

    factory LeafCategory.fromJson(Map<String, dynamic> json) => LeafCategory(
        name: json["name"],
        id: json["_id"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "_id": id,
    };}