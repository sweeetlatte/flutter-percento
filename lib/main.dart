import 'package:flutter/material.dart';
import 'package:percento/pages/home/home.dart';
import 'package:percento/providers/category.dart';
import 'package:percento/providers/slider.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => SliderProvider()),
      ChangeNotifierProvider(create: (_) => CategoryProvider()),
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (context) => const HomePage(),
      },
    ),
  ));
}
