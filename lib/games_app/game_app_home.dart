import 'package:dribbble_flutter_ui4/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GameAppHome extends StatefulWidget {
  const GameAppHome({Key? key}) : super(key: key);

  @override
  State<GameAppHome> createState() => _GameAppHomeState();
}

class _GameAppHomeState extends State<GameAppHome>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  int _tabIndex = 0;
  double angle = 0.0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 100));
    _animation = Tween(begin: -0.2, end: 0.2).animate(_animationController);
    _animationController
      ..addListener(() {
        setState(() {
          angle = _animation.value;
        });
      });
    _animationController
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _animationController.reverse();
        }
        setState(() {
          angle = 0.0;
        });
      });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              top: 24,
              left: 0,
              right: 0,
              child: Container(
                height: 140,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(24),
                    )),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.search,
                          ),
                          iconSize: 18,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.shopping_basket),
                          iconSize: 18,
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Container(
                        height: 80,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _tabIndex == 0
                                ? Container(
                                    height: 72,
                                    width: 48,
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(24),
                                        gradient: LinearGradient(
                                            colors: [
                                              Colors.red.shade200,
                                              Colors.red.shade400,
                                              Colors.red
                                            ],
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter)),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Transform.rotate(
                                          angle: angle,
                                          child: Icon(
                                            Icons.bookmark_border,
                                            color: Colors.white,
                                            size: 32,
                                          ),
                                        ),
                                        Container(
                                          height: 4,
                                          width: 4,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              shape: BoxShape.circle),
                                        )
                                      ],
                                    ),
                                  )
                                : IconButton(
                                    onPressed: () {
                                      setState(() {
                                        _animationController.forward();
                                        _tabIndex = 0;
                                      });
                                    },
                                    icon: Icon(
                                      Icons.bookmark_border,
                                    )),
                            _tabIndex == 1
                                ? Container(
                                    height: 72,
                                    width: 48,
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(24),
                                        gradient: LinearGradient(
                                            colors: [
                                              Colors.red.shade200,
                                              Colors.red.shade400,
                                              Colors.red
                                            ],
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter)),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Transform.rotate(
                                          angle: angle,
                                          child: Icon(
                                            Icons.gamepad,
                                            color: Colors.white,
                                            size: 32,
                                          ),
                                        ),
                                        Container(
                                          height: 4,
                                          width: 4,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              shape: BoxShape.circle),
                                        )
                                      ],
                                    ),
                                  )
                                : IconButton(
                                    onPressed: () {
                                      setState(() {
                                        _animationController.forward();
                                        _tabIndex = 1;
                                      });
                                    },
                                    icon: Icon(Icons.gamepad)),
                            _tabIndex == 2
                                ? Container(
                                    height: 72,
                                    width: 48,
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(24),
                                        gradient: LinearGradient(
                                            colors: [
                                              Colors.red.shade200,
                                              Colors.red.shade400,
                                              Colors.red
                                            ],
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter)),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Transform.rotate(
                                          angle: angle,
                                          child: Icon(
                                            Icons.videogame_asset,
                                            color: Colors.white,
                                            size: 32,
                                          ),
                                        ),
                                        Container(
                                          height: 4,
                                          width: 4,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              shape: BoxShape.circle),
                                        )
                                      ],
                                    ),
                                  )
                                : IconButton(
                                    onPressed: () {
                                      setState(() {
                                        _animationController.forward();
                                        _tabIndex = 2;
                                      });
                                    },
                                    icon: Icon(Icons.videogame_asset)),
                            _tabIndex == 3
                                ? Container(
                                    height: 72,
                                    width: 48,
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(24),
                                        gradient: LinearGradient(
                                            colors: [
                                              Colors.red.shade200,
                                              Colors.red.shade400,
                                              Colors.red
                                            ],
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter)),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Transform.rotate(
                                          angle: angle,
                                          child: Icon(
                                            Icons.gesture,
                                            color: Colors.white,
                                            size: 32,
                                          ),
                                        ),
                                        Container(
                                          height: 4,
                                          width: 4,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              shape: BoxShape.circle),
                                        )
                                      ],
                                    ),
                                  )
                                : IconButton(
                                    onPressed: () {
                                      setState(() {
                                        _animationController.forward();
                                        _tabIndex = 3;
                                      });
                                    },
                                    icon: Icon(Icons.gesture)),
                            _tabIndex == 4
                                ? Container(
                                    height: 72,
                                    width: 48,
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(24),
                                        gradient: LinearGradient(
                                            colors: [
                                              Colors.red.shade200,
                                              Colors.red.shade400,
                                              Colors.red
                                            ],
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter)),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Transform.rotate(
                                          angle: angle,
                                          child: Icon(
                                            Icons.apps,
                                            color: Colors.white,
                                            size: 32,
                                          ),
                                        ),
                                        Container(
                                          height: 4,
                                          width: 4,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              shape: BoxShape.circle),
                                        )
                                      ],
                                    ),
                                  )
                                : IconButton(
                                    onPressed: () {
                                      setState(() {
                                        _animationController.forward();
                                        _tabIndex = 4;
                                      });
                                    },
                                    icon: Icon(Icons.apps))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )),
          Positioned(
              top: 178,
              left: 0,
              right: 0,
              bottom: 120,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Recently popular',
                              style: TextStyle(fontSize: 12),
                            ),
                            Text(
                              'TOP GAMES',
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.bold, fontSize: 26),
                            )
                          ],
                        ),
                      )),
                  Expanded(
                      flex: 9,
                      child: Stack(
                        children: [
                          Positioned(
                              top: 0,
                              left: 0,
                              bottom: 0,
                              child: Container(
                                width: 84,
                                child: Placeholder(),
                              )),
                          Positioned(
                              top: 0,
                              left: 100,
                              bottom: 0,
                              right: 0,
                              child: Container(
                                width: 84,
                                child: ListView.builder(
                                  itemCount: 5,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      width: 240,
                                      margin: EdgeInsets.all(16),
                                      decoration:
                                          BoxDecoration(color: Colors.pink),
                                    );
                                  },
                                ),
                              ))
                        ],
                      ))
                ],
              )),
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: 120,
                decoration: BoxDecoration(color: Colors.red),
              ))
        ],
      ),
    );
  }
}
