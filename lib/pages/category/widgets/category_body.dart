import 'package:flutter/material.dart';
import 'package:percento/config/const.dart';

class CategoryBody extends StatelessWidget {
  const CategoryBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.fromLTRB(18, 10, 18, 0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 24,
        mainAxisSpacing: 24,
        mainAxisExtent: 240,
      ),
      itemCount: 9,
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
            ),
            child: Column(
              children: [
                Expanded(
                    flex: 4,
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://images.unsplash.com/photo-1547241850-eb8a8754f95c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=627&q=80'),
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
                            child: const Text(
                              'Product nameeee',
                              textAlign: TextAlign.left,
                              maxLines: 1,
                              style: styleTitle,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.fromLTRB(0, 3, 0, 12),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              'Preheat the oven to 400 degrees F (200 degrees C). Grease two 9-inch layer pans.\n– In a large mixing bowl, combine flour, 1/3 cup sugar, cocoa, baking powder, baking soda, and salt. Cut in butter until mixture resembles coarse crumbs. Add milk, mixing until just moistened. Spread batter evenly into the prepared layer pans.\n– Bake in the preheated oven for 15 minutes, or until a toothpick inserted in the center comes out clean. Cool.\n– Meanwhile, in a medium mixing bowl, combine strawberries and remaining 1/4 cup sugar. Let mixture stand for 10 minutes.\n– Remove shortcake layers from the pans. Place one layer on a serving plate; cover with 1/2 of the of strawberry mixture and 1/2 of the whipped topping. Place remaining shortcake layer on top, then remaining strawberry mixture and remaining whipped topping. Drizzle chocolate syrup over top.',
                              textAlign: TextAlign.left,
                              maxLines: 2,
                              style: styleSmallText,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                child: const Text(
                                  '\$89.9',
                                  textAlign: TextAlign.left,
                                  maxLines: 2,
                                  style: styleBigPrice,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(3),
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
  }
}
