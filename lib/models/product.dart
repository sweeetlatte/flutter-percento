import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Product {
  int id;
  String name;
  String image;
  int price;
  int? priceSaleOff;
  int rating;
  bool special;
  String summary;
  String description;
  bool? isNew;
  int? categoryId;
  Product({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
    required this.priceSaleOff,
    required this.rating,
    required this.special,
    required this.summary,
    required this.description,
    required this.isNew,
    required this.categoryId,
  });

  

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'image': image,
      'price': price,
      'priceSaleOff': priceSaleOff,
      'rating': rating,
      'special': special,
      'summary': summary,
      'description': description,
      'isNew': isNew,
      'categoryId': categoryId,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'] as int,
      name: map['name'] as String,
      image: map['image'] as String,
      price: map['price'] as int,
      priceSaleOff: map['priceSaleOff'] as int?,
      rating: map['rating'] as int,
      special: map['special'] as bool,
      summary: map['summary'] as String,
      description: map['description'] as String,
      isNew: map['isNew'] as bool?,
      categoryId: map['categoryId'] as int?,
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) => Product.fromMap(json.decode(source) as Map<String, dynamic>);
}
