import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class MyCategory {
  int id;
  String name;
  String image;

  MyCategory({
    required this.id,
    required this.name,
    required this.image,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'image': image,
    };
  }

  factory MyCategory.fromMap(Map<String, dynamic> map) {
    return MyCategory(
      id: map['id'] as int,
      name: map['name'] as String,
      image: map['image'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory MyCategory.fromJson(String source) =>
      MyCategory.fromMap(json.decode(source) as Map<String, dynamic>);
}
