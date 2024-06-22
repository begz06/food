import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodui/assets/app_icons.dart';
import 'package:foodui/assets/colors.dart';
import 'package:foodui/presentation/favorite/presentation/favorite_page.dart';
import 'package:foodui/presentation/home/presentation/home_page.dart';
import 'package:foodui/presentation/orders/presentation/my_orders_page.dart';

import 'package:foodui/presentation/profile/presentation/profile_page.dart';


class TabBarPage extends StatefulWidget {
  const TabBarPage({super.key});

  @override
  State<TabBarPage> createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          body: Column(
            children: [
              const Expanded(
                flex: 9,
                child: TabBarView(children: [
                  HomePage(),
                  MyOrdersPage(),
                  FavoritePage(),
                  ProfilePage()
                ]),
              ),
              Expanded(
                flex: 1,
                child: TabBar(
                    labelColor: primaryColor,
                    unselectedLabelColor: const Color(0xffA7AEC1),
                    tabs: [
                      Tab(
                        icon: SvgPicture.asset(AppIcons.home),
                        child: const Text(
                          'Home',
                          style: TextStyle(
                              color: Color(0xffA7AEC1),
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Tab(
                        icon: SvgPicture.asset(AppIcons.bagtabbar),
                        child: const Text(
                          'My Orders',
                          style: TextStyle(
                              color: Color(0xffA7AEC1),
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Tab(
                        icon: SvgPicture.asset(AppIcons.hearttab),
                        child: const Text(
                          'Favorite',
                          style: TextStyle(
                              color: Color(0xffA7AEC1),
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Tab(
                        icon: SvgPicture.asset(AppIcons.usertab),
                        child: const Text(
                          'My Profile',
                          style: TextStyle(
                              color: Color(0xffA7AEC1),
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ]),
              ),
            ],
          ),
        ));
  }
}
