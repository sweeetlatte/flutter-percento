import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:percento/config/const.dart';
import 'package:percento/providers/category.dart';

class CategoryBody extends StatefulWidget {
  const CategoryBody({super.key});

  @override
  State<CategoryBody> createState() => _CategoryBodyState();
}

class _CategoryBodyState extends State<CategoryBody> {
  late Future productInCategoryFuture;

  @override
  void didChangeDependencies() {
    final Map<String, dynamic> arg =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    productInCategoryFuture =
        Provider.of<CategoryProvider>(context).getProductsCategory(arg['id']);
        print('run');
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      initialData: const [],
      future: productInCategoryFuture,
      builder: (context, asyncData) {
        List data = [];
        if (asyncData.hasData) {
          data = asyncData.data as List;
        } else {
          return const Center(child: Text('No product to show'));
        }

        return GridView.builder(
          padding: const EdgeInsets.fromLTRB(18, 10, 18, 18),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 24,
            mainAxisSpacing: 24,
            mainAxisExtent: 240,
          ),
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              // onTap: () {
              //   Navigator.pushNamed(
              //     context,
              //     CategoryPage.routeName,
              //     arguments: {
              //       "title": categoryItem[index].name,
              //       "categoryId": categoryItem[index].id,
              //     },
              //   );
              // },
              child: Container(
                padding: const EdgeInsets.all(11),
                decoration: BoxDecoration(
                  color: pNeutral0,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.1),
                      blurRadius: 10,
                      offset: Offset(4, 8),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Expanded(
                        flex: 4,
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color: pNeutral0,
                            image: DecorationImage(
                              fit: BoxFit.contain,
                              image: NetworkImage(data[index].image),
                            ),
                          ),
                        )),
                    Expanded(
                        flex: 3,
                        child: Container(
                          padding: const EdgeInsets.only(top: 10),
                          alignment: Alignment.topLeft,
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  data[index].name,
                                  textAlign: TextAlign.left,
                                  maxLines: 1,
                                  style: styleTitle,
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.fromLTRB(0, 3, 0, 12),
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  data[index].summary,
                                  textAlign: TextAlign.left,
                                  maxLines: 2,
                                  style: styleSmallText,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      NumberFormat.simpleCurrency(
                                              name: 'VND', decimalDigits: 0)
                                          .format(data[index].price),
                                      textAlign: TextAlign.left,
                                      maxLines: 1,
                                      style: styleBigPrice,
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(3),
                                    decoration: BoxDecoration(
                                      color: pNeutral3,
                                      borderRadius: BorderRadius.circular(3),
                                    ),
                                    child: const Icon(
                                      Icons.add_rounded,
                                      color: pNeutral0,
                                      size: 14,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
