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
  ScrollController _scrollController = ScrollController();
  PageController _pageController = PageController(viewportFraction: 0.8);
  late AnimationController _animationController;
  late Animation<double> _animation;
  int _tabIndex = 0;
  double angle = 0.0;
  List<String> userImage = [
    'https://lh6.googleusercontent.com/_9ONrJhHZlzqpTZEoC1M7G6OvEqJw6h_PmWrGQ-623EKyfGa2QUtr7dbDKMRydadk3_cr24_Tk2Fc-D95p8bV0MhHt6qJg6eDPs5b952wCP7H7QB21s0W7VZQd6K6ZQVYNdnk69Y',
    'https://www.freeiconspng.com/thumbs/cartoon-png/mouse-cartoon-png-21.png',
    'https://www.pngmart.com/files/5/Cartoon-PNG-HD.png',
    'https://static.wikia.nocookie.net/johnnybravo/images/b/bb/Johnnyb001.gif/revision/latest?cb=20190421193227',
    'https://upload.wikimedia.org/wikipedia/en/thumb/f/fe/Speedy_Gonzales.svg/640px-Speedy_Gonzales.svg.png',
    'https://wallpaperaccess.com/full/5188641.png',
    'https://lh3.googleusercontent.com/dtgI9RAeDPSX_aoODALRtTs-mGduBvOU9UYrSEYdbtvROeBNJ7AGAd5pD1RTB4i3FgSONq7KeVceJnu0byTstldZL0vGVXwdo1aF7HXqz79pOPKZhv9RN8QkOeNSjxEwMc7JipOZ',
  ];
  EdgeInsetsGeometry _edgeInsetsGeometry =
      EdgeInsets.only(right: 16, bottom: 16, top: 16);
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
    // _scrollController..addListener(() {
    //   print(_scrollController.offset);
    // });
    _pageController.addListener(() {
      print(_pageController.page);
      print(
          '_pageController.position.maxScrollExtent : ${_pageController.position.maxScrollExtent}');
      if (_pageController.page != 1.0 || _pageController.page != 0.0) {
        _edgeInsetsGeometry = EdgeInsets.only(right: 16, bottom: 32, top: 32);
      }
      if (_pageController.page == 1.0 || _pageController.page == 0.0) {
        _edgeInsetsGeometry = EdgeInsets.only(right: 16, bottom: 16, top: 16);
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
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
                                child: RotatedBox(
                                  quarterTurns: -1,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.ac_unit,
                                                size: 12,
                                              ),
                                              Text('Global distribution'),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Container(
                                            height: 4,
                                            width: 4,
                                            decoration: BoxDecoration(
                                                color: Colors.black),
                                          )
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.ac_unit,
                                                size: 12,
                                              ),
                                              Text('Multi-language'),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Container(
                                            height: 4,
                                            width: 4,
                                            decoration: BoxDecoration(
                                                color: Colors.black),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              )),
                          Positioned(
                              top: 0,
                              left: 84,
                              bottom: 0,
                              right: 0,
                              child: IndexedStack(index: _tabIndex, children: [
                                Container(
                                  child: PageView.builder(
                                      onPageChanged: (i) {
                                        print('onPageChanged : $i');
                                      },
                                      scrollDirection: Axis.horizontal,
                                      itemCount: 2,
                                      itemBuilder: ((context, index) {
                                        return AnimatedContainer(
                                          width: 260,
                                          margin: _edgeInsetsGeometry,
                                          decoration: BoxDecoration(
                                              color: Colors.red,
                                              image: DecorationImage(
                                                  image: NetworkImage(
                                                      userImage[index])),
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors
                                                        .deepOrange.shade100,
                                                    offset: Offset(4, 4),
                                                    spreadRadius: 2,
                                                    blurRadius: 4),
                                                BoxShadow(
                                                    color: Colors.blue.shade100,
                                                    offset: Offset(-4, 4),
                                                    spreadRadius: 2,
                                                    blurRadius: 4),
                                              ]),
                                          duration: Duration(milliseconds: 100),
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                  left: 0,
                                                  right: 0,
                                                  bottom: 0,
                                                  child: Container(
                                                    height: 120,
                                                    padding: EdgeInsets.all(24),
                                                    decoration: BoxDecoration(
                                                        color: Colors.blue
                                                            .withOpacity(.7),
                                                        borderRadius:
                                                            BorderRadius.only(
                                                                topLeft:
                                                                    Radius
                                                                        .circular(
                                                                            48),
                                                                bottomLeft:
                                                                    Radius
                                                                        .circular(
                                                                            16),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        16))),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          'Pokemon',
                                                          style: TextStyle(
                                                              fontSize: 18,
                                                              color:
                                                                  Colors.white),
                                                        ),
                                                        Text(
                                                          'sword & shield',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white),
                                                        )
                                                      ],
                                                    ),
                                                  )),
                                              Positioned(
                                                  right: 0,
                                                  bottom: 0,
                                                  child: Container(
                                                    height: 64,
                                                    width: 120,
                                                    decoration: BoxDecoration(
                                                        color: Colors.orange,
                                                        gradient: LinearGradient(
                                                            colors: [
                                                              Colors.deepOrange
                                                                  .shade300,
                                                              Colors.deepOrange
                                                            ],
                                                            begin: Alignment
                                                                .topCenter,
                                                            end: Alignment
                                                                .bottomCenter),
                                                        borderRadius:
                                                            BorderRadius.only(
                                                                topLeft: Radius
                                                                    .circular(
                                                                        48),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        16))),
                                                    child: Center(
                                                      child: Text(
                                                        '\$116.99',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 20),
                                                      ),
                                                    ),
                                                  ))
                                            ],
                                          ),
                                        );
                                      })),
                                ),
                                Container(
                                  child: Center(
                                    child: Text('Page 2'),
                                  ),
                                ),
                                Container(
                                  child: Center(
                                    child: Text('Page 3'),
                                  ),
                                ),
                                Container(
                                  child: Center(
                                    child: Text('Page 4'),
                                  ),
                                ),
                                Container(
                                  child: Center(
                                    child: Text('Page 5'),
                                  ),
                                )
                              ]))
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'POPULAR ANOTHER',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        )),
                    Expanded(
                        flex: 6,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: userImage.length,
                            itemBuilder: (context, index) {
                              return Container(
                                width: 64,
                                margin: EdgeInsets.symmetric(
                                    vertical: 16, horizontal: 8),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(userImage[index]),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(16)),
                              );
                            }))
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
