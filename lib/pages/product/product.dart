import 'package:flutter/material.dart';
import 'package:percento/config/const.dart';

class ProductDetail extends StatelessWidget {
  static const routeName = '/product';
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 450,
                    child: Flex(
                      direction: Axis.vertical,
                      children: const [
                        Expanded(
                          child: Image(
                            image: NetworkImage(
                                'https://images.unsplash.com/photo-1504253492562-cbc4dc540fcb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(18, 18, 18, 90),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(bottom: 9),
                      child: const Text(
                        '16GB/1TB',
                        style: styleTitle,
                      ),
                    ),
                    const Text(
                      'This cheesy, potato-ey casserole is reminiscent of classic loaded potatoes. Potatoes are roasted in a spice mix which packs them with tons of flavor and gives them a beautiful golden coloring.',
                      style: styleSmallText,
                    ),
                    const Text(
                      'This cheesy, potato-ey casserole is reminiscent of classic loaded potatoes. Potatoes are roasted in a spice mix which packs them with tons of flavor and gives them a beautiful golden coloring.',
                      style: styleSmallText,
                    ),
                    const Text(
                      'This cheesy, potato-ey casserole is reminiscent of classic loaded potatoes. Potatoes are roasted in a spice mix which packs them with tons of flavor and gives them a beautiful golden coloring.',
                      style: styleSmallText,
                    ),
                    const Text(
                      'This cheesy, potato-ey casserole is reminiscent of classic loaded potatoes. Potatoes are roasted in a spice mix which packs them with tons of flavor and gives them a beautiful golden coloring.',
                      style: styleSmallText,
                    ),
                    const Text(
                      'This cheesy, potato-ey casserole is reminiscent of classic loaded potatoes. Potatoes are roasted in a spice mix which packs them with tons of flavor and gives them a beautiful golden coloring.',
                      style: styleSmallText,
                    ),
                    const Text(
                      'This cheesy, potato-ey casserole is reminiscent of classic loaded potatoes. Potatoes are roasted in a spice mix which packs them with tons of flavor and gives them a beautiful golden coloring.',
                      style: styleSmallText,
                    ),
                    const Text(
                      'This cheesy, potato-ey casserole is reminiscent of classic loaded potatoes. Potatoes are roasted in a spice mix which packs them with tons of flavor and gives them a beautiful golden coloring.',
                      style: styleSmallText,
                    ),
                    const Text(
                      'This cheesy, potato-ey casserole is reminiscent of classic loaded potatoes. Potatoes are roasted in a spice mix which packs them with tons of flavor and gives them a beautiful golden coloring.',
                      style: styleSmallText,
                    ),
                    const Text(
                      'This cheesy, potato-ey casserole is reminiscent of classic loaded potatoes. Potatoes are roasted in a spice mix which packs them with tons of flavor and gives them a beautiful golden coloring.',
                      style: styleSmallText,
                    ),
                    const Text(
                      'This cheesy, potato-ey casserole is reminiscent of classic loaded potatoes. Potatoes are roasted in a spice mix which packs them with tons of flavor and gives them a beautiful golden coloring.',
                      style: styleSmallText,
                    ),
                    const Text(
                      'This cheesy, potato-ey casserole is reminiscent of classic loaded potatoes. Potatoes are roasted in a spice mix which packs them with tons of flavor and gives them a beautiful golden coloring.',
                      style: styleSmallText,
                    ),
                    const Text(
                      'This cheesy, potato-ey casserole is reminiscent of classic loaded potatoes. Potatoes are roasted in a spice mix which packs them with tons of flavor and gives them a beautiful golden coloring.',
                      style: styleSmallText,
                    ),
                    const Text(
                      'This cheesy, potato-ey casserole is reminiscent of classic loaded potatoes. Potatoes are roasted in a spice mix which packs them with tons of flavor and gives them a beautiful golden coloring.',
                      style: styleSmallText,
                    ),
                    const Text(
                      'This cheesy, potato-ey casserole is reminiscent of classic loaded potatoes. Potatoes are roasted in a spice mix which packs them with tons of flavor and gives them a beautiful golden coloring.',
                      style: styleSmallText,
                    ),
                    const Text(
                      'This cheesy, potato-ey casserole is reminiscent of classic loaded potatoes. Potatoes are roasted in a spice mix which packs them with tons of flavor and gives them a beautiful golden coloring.',
                      style: styleSmallText,
                    ),
                    const Text(
                      'This cheesy, potato-ey casserole is reminiscent of classic loaded potatoes. Potatoes are roasted in a spice mix which packs them with tons of flavor and gives them a beautiful golden coloring.',
                      style: styleSmallText,
                    ),
                    const Text(
                      'This cheesy, potato-ey casserole is reminiscent of classic loaded potatoes. Potatoes are roasted in a spice mix which packs them with tons of flavor and gives them a beautiful golden coloring.',
                      style: styleSmallText,
                    ),
                    const Text(
                      'This cheesy, potato-ey casserole is reminiscent of classic loaded potatoes. Potatoes are roasted in a spice mix which packs them with tons of flavor and gives them a beautiful golden coloring.',
                      style: styleSmallText,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            padding: const EdgeInsets.fromLTRB(16, 70, 18, 9),
            color: const Color.fromRGBO(255, 255, 255, 0.9),
            width: double.infinity,
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    margin: const EdgeInsets.only(right: 18),
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 0.75),
                        boxShadow: [
                          BoxShadow(
                            color: pNeutral2RGBA,
                            blurRadius: 1,
                            spreadRadius: 1,
                            offset: Offset(0, 0),
                          ),
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(999))),
                    child: const Icon(
                      Icons.arrow_back_rounded,
                      color: pNeutral3,
                    ),
                  ),
                ),
                const Text(
                  'Product name',
                  style: styleBigProductName,
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [pNeutral0, Color.fromRGBO(255, 255, 255, 0.5)],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                tileMode: TileMode.clamp,
              ),
            ),
            child: Container(
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.all(18),
              decoration: const BoxDecoration(
                color: pNeutral3,
                borderRadius: BorderRadius.all(Radius.circular(12)),
                boxShadow: [
                  BoxShadow(
                    color: pNeutral3RGBA,
                    blurRadius: 10,
                    spreadRadius: 1,
                    offset: Offset(5, 6),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      flex: 1,
                      child: Row(
                        children: const [
                          Text(
                            'đ29,000,000',
                            style: TextStyle(
                                fontSize: 16,
                                color: pNeutral1,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      )),
                  Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: 26,
                            height: 26,
                            decoration: const BoxDecoration(
                              color: pNeutral0,
                            ),
                            child: const Icon(
                              Icons.remove_rounded,
                              size: 18,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            child: Text(
                              '1',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: pNeutral1,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 26,
                            height: 26,
                            decoration: const BoxDecoration(
                              color: pNeutral0,
                            ),
                            child: const Icon(
                              Icons.add_rounded,
                              size: 18,
                            ),
                          ),
                        ],
                      )),
                  Expanded(
                      flex: 1,
                      child: Container(
                        padding: const EdgeInsets.only(bottom: 3),
                        margin: const EdgeInsets.only(left: 25),
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 1.0,
                              color: pNeutral1,
                            ),
                          ),
                        ),
                        child: const Text(
                          'Add to Cart',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontSize: 16,
                            color: pNeutral1,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
