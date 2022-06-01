import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class Reminder extends StatelessWidget {
  const Reminder({Key? key}) : super(key: key);

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
      body: Stack(
        children: [
          Positioned(
              child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                  Colors.blue.shade200,
                  Colors.blue.shade300,
                  Colors.blue.shade400
                ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    tileMode: TileMode.mirror)),
          )),
          Positioned(
              top: 62,
              left: 24,
              right: 24,
              child: Container(
                height: 38,
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        )),
                  ],
                ),
              )),
          Positioned(
              left: 32,
              top: 140,
              child: Container(
                height: 181,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Daily',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 48,
                      ),
                    ),
                    Text(
                      'Reminders',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 48,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'TODAY',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          letterSpacing: 1.3),
                    )
                  ],
                ),
              )),
          Positioned(
              left: 0,
              right: 130,
              bottom: 0,
              top: 340,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(16))),
              )),
          Positioned(
              left: 0,
              right: 110,
              bottom: 0,
              top: 356,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(16))),
              )),
          Positioned(
              left: 0,
              right: 80,
              bottom: 0,
              top: 372,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(16))),
              ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.red[300],
      ),
    );
  }
}
