import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:percento/models/category.dart';

class CategoryProvider extends ChangeNotifier {
  Future<List<MyCategory>> getCategory() async {
    const url = 'https://apiforlearning.zendvn.com/api/mobile/categories';
    final response = await http.get(Uri.parse(url));
    final jsonData = jsonDecode(response.body);

    List<MyCategory> data = List<MyCategory>.from(jsonData
        .map((category) => MyCategory.fromJson(jsonEncode(category)))).toList();
    return data;
  }
}
