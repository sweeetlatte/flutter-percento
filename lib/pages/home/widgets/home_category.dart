import 'package:flutter/material.dart';
import 'package:percento/config/const.dart';
import 'package:percento/pages/category/category.dart';
import 'package:percento/providers/category.dart';
import 'package:provider/provider.dart';

class HomeCategory extends StatefulWidget {
  const HomeCategory({super.key});

  @override
  State<HomeCategory> createState() => _HomeCategoryState();
}

class _HomeCategoryState extends State<HomeCategory> {
  late Future categoryFuture;

  @override
  void didChangeDependencies() {
    categoryFuture = Provider.of<CategoryProvider>(context).getCategory();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(bottom: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Categories',
              style: styleTitle,
            ),
            Text(
              'All',
              style: styleSubtitleGray,
            ),
          ],
        ),
      ),
      SizedBox(
        height: 71,
        child: FutureBuilder(
            future: categoryFuture,
            initialData: const [],
            builder: (context, asyncData) {
              var categoryData = [];
              if (asyncData.hasData) {
                categoryData = asyncData.data! as List;
              } else {
                return const Center(
                  child: Text('No category to show'),
                );
              }
              return ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) {
                    var categoryName =
                        categoryData[index].name[0].toUpperCase() +
                            categoryData[index].name.substring(1).toLowerCase();
                    return InkWell(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          CategoryPage.routeName,
                          arguments: {
                            'id': categoryData[index].id,
                            'name': categoryData[index].name,
                          },
                        );
                      },
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Image(
                                width: 48,
                                height: 48,
                                image: NetworkImage(categoryData[index].image),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 7.0),
                            child: Text(
                              categoryName,
                              style: styleSubtitleBlack,
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                  separatorBuilder: (context, index) {
                    return const SizedBox(width: 27);
                  },
                  itemCount: categoryData.length);
            }),
      )
    ]);
  }
}
