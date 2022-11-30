import 'package:flutter/material.dart';
import 'package:percento/config/const.dart';
import 'package:percento/pages/home/widgets/home_category.dart';
import 'package:percento/pages/home/widgets/home_slider.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        title: const Text(
          'Percento',
          style: TextStyle(
              color: pNeutral3,
              fontWeight: FontWeight.w400,
              fontSize: 20,
              letterSpacing: 1),
        ),
        backgroundColor: pNeutral1,
        elevation: 0,
      ),
      body: Container(
        color: pNeutral1,
        padding: const EdgeInsets.fromLTRB(18, 9, 18, 18),
        child: Column(
          children: const [
            HomeSlider(),
            HomeCategory(),
          ],
        ),
      ),
    );
  }
}
