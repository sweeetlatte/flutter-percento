import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:percento/providers/slider.dart';
import 'package:provider/provider.dart';

class HomeSlider extends StatefulWidget {
  const HomeSlider({super.key});

  @override
  State<HomeSlider> createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
  late Future sliderFuture;

  @override
  void didChangeDependencies() {
    sliderFuture = Provider.of<SliderProvider>(context).getSlider();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 27),
      child: FutureBuilder(
        future: sliderFuture,
        initialData: const [],
        builder: (context, asyncData) {
          var sliderData = [];
          if (asyncData.hasData) {
            sliderData = asyncData.data! as List;
          } else {
            return const Center(
              child: Text('No slider to show'),
            );
          }

          return CarouselSlider(
            options: CarouselOptions(height: 200.0),
            items: sliderData.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 11.0),
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(9)),
                        image: DecorationImage(
                          image: NetworkImage(i.image),
                          fit: BoxFit.cover,
                        )),
                  );
                },
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
