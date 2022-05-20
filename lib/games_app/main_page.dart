import 'package:flutter/material.dart';

import 'game_app_home.dart';

class GameApp extends StatelessWidget {
  const GameApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GameAppHome(),
    );
  }
}