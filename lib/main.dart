import 'package:flutter/material.dart';
import 'package:percento/pages/auth/signup.dart';
import 'package:percento/pages/category/category.dart';
import 'package:percento/pages/home/home.dart';
import 'package:percento/pages/product/product.dart';
import 'package:percento/providers/auth.dart';
import 'package:percento/providers/category.dart';
import 'package:percento/providers/slider.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SliderProvider()),
        ChangeNotifierProvider(create: (_) => CategoryProvider()),
        ChangeNotifierProvider(create: (_) => AuthProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: HomePage.routeName,
        routes: {
          SignUp.routeName: (context) => const SignUp(),
          HomePage.routeName: (context) => const HomePage(),
          CategoryPage.routeName: (context) => const CategoryPage(),
          ProductDetail.routeName: (context) => const ProductDetail(),
        },
      ),
    ),
  );
}
