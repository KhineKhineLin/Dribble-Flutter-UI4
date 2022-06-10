import 'package:flutter/material.dart';

class FoodCateringHomePage extends StatefulWidget {
  const FoodCateringHomePage({Key? key}) : super(key: key);

  @override
  State<FoodCateringHomePage> createState() => _FoodCateringHomePageState();
}

class _FoodCateringHomePageState extends State<FoodCateringHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 60,
              decoration: BoxDecoration(color: Colors.red),
            )),
        Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: Container(
              height: 210,
              decoration: BoxDecoration(color: Colors.blue),
            ))
      ]),
    );
  }
}
