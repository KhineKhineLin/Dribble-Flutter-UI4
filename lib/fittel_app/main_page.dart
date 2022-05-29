import 'package:flutter/material.dart';

import 'profile_page.dart';
class Fittel extends StatelessWidget {
  const Fittel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}