import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodui/assets/app_icons.dart';
import 'package:foodui/assets/images.dart';


class AppBarWitget extends StatelessWidget {
  const AppBarWitget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      centerTitle: true,
      title: const Column(
        children: [
          Text(
            'Location',
            style: TextStyle(color: Colors.white),
          ),
          //sandiago loc
        ],
      ),
      backgroundColor: Colors.white,
      elevation: 0.0,
      pinned: true,
      expandedHeight: MediaQuery.sizeOf(context).height / 2.2,
      flexibleSpace: FlexibleSpaceBar(
        
        background: Image.asset(
          AppImages.appBarImage,
          fit: BoxFit.cover,
        ),
      ),
      bottom: const PreferredSize(
        
          preferredSize: Size(double.infinity, 50),
          child: TextField(
            
            decoration: InputDecoration(
               fillColor: Colors.white
               ),
          )),

     
      leading: Padding(
        padding: const EdgeInsets.only(left: 16, top: 12),
        child: Container(
          padding: const EdgeInsets.all(8),
          height: 60,
          width: 60,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(AppIcons.menu),
        ),
      ),
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 16, top: 12),
          height: 40,
          width: 40,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(AppIcons.notif),
        ),
      ],
    );
  }
}


