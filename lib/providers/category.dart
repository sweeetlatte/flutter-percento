import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:percento/models/category.dart';
import 'package:percento/models/product.dart';

class CategoryProvider extends ChangeNotifier {
  Future<List<MyCategory>> getCategory() async {
    const url = 'https://apiforlearning.zendvn.com/api/mobile/categories';
    try {
      final response = await http.get(Uri.parse(url));
      final jsonData = jsonDecode(response.body);

      List<MyCategory> data = List<MyCategory>.from(jsonData.map(
          (category) => MyCategory.fromJson(jsonEncode(category)))).toList();
      return data;
    } catch (e) {
      return Future.error(e);
    }
  }

  Future<List<Product>> getProductsCategory(int id) async {
    var url =
        'https://apiforlearning.zendvn.com/api/mobile/categories/$id/products';
      final response = await http.get(Uri.parse(url));
      final jsonData = jsonDecode(response.body);

      List<Product> data = List<Product>.from(jsonData.map(
          (product) => Product.fromJson(jsonEncode(product)))).toList();
      
      print(data);
      return data;
    
  }
}
