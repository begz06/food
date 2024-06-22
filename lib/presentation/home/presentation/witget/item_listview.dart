import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodui/assets/app_icons.dart';
import 'package:foodui/assets/colors.dart';
import 'package:foodui/assets/images.dart';


class ItemListViewWitget extends StatefulWidget {
  const ItemListViewWitget({super.key});

  @override
  State<ItemListViewWitget> createState() => _ItemListViewWitgetState();
}

class _ItemListViewWitgetState extends State<ItemListViewWitget> {
  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(24),
      sliver: SliverToBoxAdapter(
        child: SizedBox(
          height: 285,
          child: ListView.separated(
            itemCount: 20,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'itemInfo');
                    },
                    child: Container(
                      height: 255,
                      width: 200,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage(
                              AppImages.image,
                            ),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 5,
                    right: 5,
                    bottom: 45,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        right: 10,
                        left: 10,
                      ),
                      child: Container(
                        height: 83,
                        width: 184,
                        decoration: BoxDecoration(
                            color: const Color(0xff1F272D).withOpacity(0.80),
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Expanded(
                                    child: Text(
                                      'Viral stacking cake with honey',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  SvgPicture.asset(
                                    AppIcons.heart,
                                    color: primaryColor,
                                    height: 16,
                                    width: 16,
                                  )
                                ],
                              ),
                              const Row(
                                children: [
                                  Text(
                                    '9.67',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 14,
                    left: 14,
                    child: Container(
                      height: 32,
                      width: 62,
                      decoration: BoxDecoration(
                          color: const Color(0xff1F272D).withOpacity(0.80),
                          borderRadius: BorderRadius.circular(8)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
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
                              '4.5',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                width: 20,
              );
            },
          ),
        ),
      ),
    );
  }
}
