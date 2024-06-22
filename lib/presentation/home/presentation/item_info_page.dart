import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodui/assets/app_icons.dart';
import 'package:foodui/assets/colors.dart';
import 'package:foodui/assets/images.dart';
import 'package:foodui/presentation/home/map/view/map_witget.dart';
import 'package:foodui/presentation/home/presentation/home_page.dart';
import 'package:foodui/presentation/home/presentation/witget/add_ingredients.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class ItemInfoPage extends StatefulWidget {
  const ItemInfoPage({super.key});

  @override
  State<ItemInfoPage> createState() => _ItemInfoPageState();
}

class _ItemInfoPageState extends State<ItemInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: Padding(
              padding: const EdgeInsets.only(left: 10, top: 12),
              child: Container(
                padding: const EdgeInsets.all(8),
                height: 46,
                width: 46,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'tabbar');
                    },
                    child: SvgPicture.asset(AppIcons.arrow)),
              ),
            ),
            centerTitle: true,
            title: const Text(
              'Menu Detail',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            actions: [
              Container(
                margin: const EdgeInsets.only(right: 16, top: 12),
                height: 46,
                width: 46,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset(AppIcons.heart),
              ),
            ],
            expandedHeight: 407,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                AppImages.infoImg,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 16,
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            sliver: SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Noodles',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff797D81)),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      const Expanded(
                        child: Text(
                          'Fried grill noodles with egg special',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Container(
                        height: 32,
                        width: 88,
                        decoration: BoxDecoration(
                            color: const Color(0xffF3F3F3),
                            borderRadius: BorderRadius.circular(50)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 24,
                              width: 24,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100))),
                              child:
                                  const Text('-', textAlign: TextAlign.center),
                            ),
                            const Text(
                              '3',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w600),
                            ),
                            Container(
                              height: 24,
                              width: 24,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100))),
                              child:
                                  const Text('+', textAlign: TextAlign.center),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          const Text(
                            'Rating',
                            style: TextStyle(
                                color: Color(0xff8C8E98),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: primaryColor,
                                size: 20,
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              const Text(
                                '4.8',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const Text(
                            'Callories',
                            style: TextStyle(
                                color: Color(0xff8C8E98),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.fireplace_outlined,
                                color: primaryColor,
                                size: 20,
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              const Text(
                                '124 Kkal',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const Text(
                            'Rating',
                            style: TextStyle(
                                color: Color(0xff8C8E98),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.watch_later_rounded,
                                color: primaryColor,
                                size: 20,
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              const Text(
                                '15 min',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                  const Text(
                    'Description',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Vegatables noodles is healthy Chinese inspired dish where cooked noodles are stir fried with lots of vegatables.Furthered the dish is a seasoned with a splash of sauces, vinager and black',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff8C8E98)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Add Extra Ingredients',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  const AddIngredientsWitget(),
                  const AddIngredientsWitget(),
                  const AddIngredientsWitget(),
                  const AddIngredientsWitget(),
                  const AddIngredientsWitget(),
                  const AddIngredientsWitget(),
                  const AddIngredientsWitget(),
                  const AddIngredientsWitget(),
                ],
              ),
            ),
          ),
          const SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            sliver: SliverToBoxAdapter(
              child: Text(
                'Location',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'map');
                },
                child: Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const YandexMapWitget()),
              ),
            ),
          )
        ],
      ),
    );
  }
}
