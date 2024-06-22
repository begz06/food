import 'package:flutter/material.dart';
import 'package:foodui/core/router/route.dart';

void main(List<String> args) {
  runApp(FoodOrder());
}

class FoodOrder extends StatelessWidget {
  const FoodOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Outfit',

      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.router.onGenerate,
      initialRoute: 'tabbar',
    );
  }
}
