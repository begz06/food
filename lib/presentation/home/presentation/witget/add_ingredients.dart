import 'package:flutter/material.dart';
import 'package:foodui/assets/colors.dart';

class AddIngredientsWitget extends StatefulWidget {
  const AddIngredientsWitget({super.key});

  @override
  State<AddIngredientsWitget> createState() => _AddIngredientsWitgetState();
}

class _AddIngredientsWitgetState extends State<AddIngredientsWitget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xffF3F3F3)),
                child: Icon(
                  Icons.home,
                  color: primaryColor,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mustard',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      '1 Grm',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff8C8E98)),
                    ),
                  ],
                ),
              )
            ],
          ),
          Container(
            height: 32,
            width: 88,
            decoration: BoxDecoration(
                color: Color(0xffF3F3F3),
                borderRadius: BorderRadius.circular(50)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 24,
                  width: 24,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                  child: Text('-', textAlign: TextAlign.center),
                ),
                Text(
                  '3',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
                Container(
                  height: 24,
                  width: 24,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                  child: Text('+', textAlign: TextAlign.center),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
