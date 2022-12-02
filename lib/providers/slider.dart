import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:percento/models/slider.dart';

class SliderProvider extends ChangeNotifier {
  Future<List<MySlider>> getSlider() async {
    const url = 'https://6389975a4eccb986e894e409.mockapi.io/sliders';
    final response = await http.get(Uri.parse(url));
    final jsonData = jsonDecode(response.body);

    List<MySlider> data = List<MySlider>.from(
            jsonData.map((slider) => MySlider.fromJson(jsonEncode(slider))))
        .toList();
    return data;
  }
}
