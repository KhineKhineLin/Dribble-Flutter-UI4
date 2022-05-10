import 'package:dribbble_flutter_ui4/fitness_activity_tracker_app/static_page.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class FitnessActivityTracker extends StatelessWidget {
  const FitnessActivityTracker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned(
              left: 0,
              right: 0,
              bottom: 100,
              top: 0,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(32),
                        bottomRight: Radius.circular(32))),
              )),
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 24),
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Statistics',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(context, PageTransition(child: StatisticsPage(), type: PageTransitionType.bottomToTop));
                      },
                      icon: Icon(Icons.keyboard_arrow_up),
                      color: Colors.white,
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
