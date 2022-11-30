import 'dart:convert';

import 'package:flutter/cupertino.dart';

import 'package:http/http.dart' as http;

class SliderProvider extends ChangeNotifier {
  Future<void> getSlider() async {
    final url = 'https://apiforlearning.zendvn.com/api/mobile/sliders';
    final response = await http.get(Uri.parse(url));
    final jsonData = jsonDecode(response.body);
  }
}
