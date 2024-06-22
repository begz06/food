import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:foodui/assets/app_icons.dart';
import 'package:foodui/assets/colors.dart';
import 'package:foodui/assets/images.dart';

import 'package:foodui/presentation/home/presentation/witget/app_bar_witget.dart';
import 'package:foodui/presentation/home/presentation/witget/catagory_item_witget.dart';
import 'package:foodui/presentation/home/presentation/witget/item_listview.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            AppBarWitget(),
            SliverPadding(
              padding: EdgeInsets.all(24),
              sliver: SliverToBoxAdapter(
                child: CatagoryItemWitget(),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              sliver: SliverToBoxAdapter(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Hot Deals',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'See All',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffF86A2E),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ItemListViewWitget(),
            
          ],
        ),
      ),
    );
  }
}
