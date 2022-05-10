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
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(32),
                        bottomRight: Radius.circular(32))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
                        CircleAvatar()
                      ],
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Text(
                        'Activity',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 26,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 16, right: 16),
                      height: MediaQuery.of(context).size.height / 1.78,
                      child: Column(
                        children: [
                          Expanded(
                              flex: 1,
                              child: Row(
                                children: [
                                  Expanded(
                                      flex: 1,
                                      child: Container(
                                        margin: EdgeInsets.only(
                                            right: 8, bottom: 8),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(16),
                                            border: Border.all(
                                                color: Colors.grey.shade300)),
                                        padding: EdgeInsets.only(
                                            left: 24, top: 24, bottom: 24),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.favorite_border,
                                              color: Colors.red,
                                            ),
                                            Spacer(),
                                            Text(
                                              '131',
                                              style: TextStyle(
                                                  fontSize: 28,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              'bpm',
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 19,
                                                  fontWeight: FontWeight.w300),
                                            ),
                                            Spacer(),
                                            Text(
                                              'Heart rate',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      )),
                                  Expanded(
                                      flex: 1,
                                      child: Container(
                                        padding: EdgeInsets.only(
                                            left: 24, top: 24, bottom: 24),
                                        margin:
                                            EdgeInsets.only(left: 8, bottom: 8),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(16),
                                            border: Border.all(
                                                color: Colors.grey.shade300)),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.whatshot,
                                              color: Colors.orange[500],
                                            ),
                                            Spacer(),
                                            Text(
                                              '450',
                                              style: TextStyle(
                                                  fontSize: 28,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              'kcal',
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 19,
                                                  fontWeight: FontWeight.w300),
                                            ),
                                            Spacer(),
                                            Text(
                                              'Calories',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      ))
                                ],
                              )),
                          Expanded(
                              flex: 1,
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      padding: EdgeInsets.only(
                                          left: 24, top: 24, bottom: 24),
                                      margin: EdgeInsets.only(right: 8, top: 8),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          border: Border.all(
                                              color: Colors.grey.shade300)),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Icon(
                                            Icons.directions_walk,
                                            color: Colors.purple,
                                          ),
                                          Spacer(),
                                          Text(
                                            '6551',
                                            style: TextStyle(
                                                fontSize: 28,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            'steps',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 19,
                                                fontWeight: FontWeight.w300),
                                          ),
                                          Spacer(),
                                          Text(
                                            'Step',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                      flex: 1,
                                      child: Container(
                                        padding: EdgeInsets.only(
                                            left: 24, top: 24, bottom: 24),
                                        margin:
                                            EdgeInsets.only(left: 8, top: 8),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(16),
                                            border: Border.all(
                                                color: Colors.grey.shade300)),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.local_drink,
                                              color: Colors.blue,
                                            ),
                                            Spacer(),
                                            Text(
                                              '4',
                                              style: TextStyle(
                                                  fontSize: 28,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              'cups',
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 19,
                                                  fontWeight: FontWeight.w300),
                                            ),
                                            Spacer(),
                                            Text(
                                              'Water',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      ))
                                ],
                              ))
                        ],
                      ),
                    )
                  ],
                ),
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
                        Navigator.push(
                            context,
                            PageTransition(
                                child: StatisticsPage(),
                                type: PageTransitionType.bottomToTop));
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
