import 'package:flutter/material.dart';
import 'package:percento/pages/auth/signin.dart';
import 'package:percento/pages/category/category.dart';
import 'package:percento/pages/home/home.dart';
import 'package:percento/pages/product/product.dart';
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
      initialRoute: SignIn.routeName,
      routes: {
        SignIn.routeName: (context) => const SignIn(),
        HomePage.routeName: (context) => const HomePage(),
        CategoryPage.routeName: (context) => const CategoryPage(),
        ProductDetail.routeName: (context) => const ProductDetail(),
      },
    ),
  ));
}
