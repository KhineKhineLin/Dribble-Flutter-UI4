import 'package:dribbble_flutter_ui4/daily_activities_app/daily_main_page.dart';
import 'package:flutter/material.dart';

class DailyActivity extends StatelessWidget {
  const DailyActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DailyMainPage(),
    );
  }
}
