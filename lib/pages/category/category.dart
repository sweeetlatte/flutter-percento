import 'package:flutter/material.dart';
import 'package:percento/config/const.dart';
import 'package:percento/pages/category/widgets/category_body.dart';

class CategoryPage extends StatelessWidget {
  static const routeName = '/category';
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> arg =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    var categoryName =
        arg['name'][0].toUpperCase() + arg['name'].substring(1).toLowerCase();

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        title: Text(
          categoryName,
          style: const TextStyle(
              color: pNeutral3,
              fontWeight: FontWeight.w400,
              fontSize: 20,
              letterSpacing: 1),
        ),
        iconTheme: const IconThemeData(color: pNeutral3),
        backgroundColor: pNeutral1,
        elevation: 0,
      ),
      body: Container(
        color: pNeutral1,
        child: const CategoryBody(),
      ),
    );
  }
}
