import 'package:flutter/material.dart';

import 'package:foodui/assets/colors.dart';
import 'package:foodui/assets/images.dart';


class CatagoryItemWitget extends StatefulWidget {
  const CatagoryItemWitget({super.key});

  @override
  State<CatagoryItemWitget> createState() => _CatagoryItemWitgetState();
}

class _CatagoryItemWitgetState extends State<CatagoryItemWitget> {
  int tapped = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 41,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                
                setState(() {
                tapped = index;
                  
                });
              },
              child: Container(
                  decoration: BoxDecoration(
                    color: tapped == index ? primaryColor : Colors.white ,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    child: Row(
                      children: [
                        Container(
                          height: 24,
                          width: 24,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(AppImages.pizza),
                            ),
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        const Text('Humburger'),
                      ],
                    ),
                  )),
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              width: 6,
            );
          },
          itemCount: 10),
    );
  }
}
