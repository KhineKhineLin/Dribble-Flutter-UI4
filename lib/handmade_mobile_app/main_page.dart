import 'package:dribbble_flutter_ui4/handmade_mobile_app/best_sellers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

const Color primaryColor = Color(0xffBc6e6b);
const Color secondaryColor = Color(0xffC5bcbc);

class HandMadeApp extends StatelessWidget {
  const HandMadeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HandMadeHomePage(),
        '/home': (context) => HandMadeMainPage()
      },
    );
  }
}

class HandMadeMainPage extends StatefulWidget {
  const HandMadeMainPage({Key? key}) : super(key: key);

  @override
  State<HandMadeMainPage> createState() => _HandMadeMainPageState();
}

class _HandMadeMainPageState extends State<HandMadeMainPage> {
  late PageController _pageController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(viewportFraction: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              left: 0,
              right: 0,
              top: 0,
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: NetworkImage(
                      'https://cdn.pixabay.com/photo/2016/03/23/04/01/woman-1274056_960_720.jpg'),
                  fit: BoxFit.cover,
                )),
              )),
          Positioned(
              left: 16,
              right: 16,
              top: 36,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.add_shopping_cart,
                      color: Colors.white,
                    )
                  ],
                ),
              )),
          Positioned(
              left: 16,
              bottom: MediaQuery.of(context).size.height / 2.2,
              right: 16,
              top: MediaQuery.of(context).size.height / 1.9,
              child: Container(
                height: 38,
                child: Center(
                  child: SmoothPageIndicator(
                    controller: _pageController,
                    count: 4,
                    effect: WormEffect(activeDotColor: Color(0xffC5BCBC)),
                  ),
                ),
              )),
          Positioned(
              left: 16,
              bottom: 16,
              right: 16,
              top: MediaQuery.of(context).size.height / 1.75,
              child: PageView(
                controller: _pageController,
                children: [
                  Container(
                    padding: EdgeInsets.only(
                        left: 24, right: 24, top: 32, bottom: 24),
                    decoration:
                        BoxDecoration(color: Colors.white.withOpacity(0.7)),
                    child: Column(
                      children: [
                        Text(
                          'METAMORPHOSE',
                          style: GoogleFonts.openSans(
                              color: Color(0xff8c6e6b),
                              fontSize: 16,
                              letterSpacing: 1.2),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          'DRAGONFLIES WINGS',
                          style: GoogleFonts.merriweather(
                              fontSize: 17, fontWeight: FontWeight.w300),
                        ),
                        SizedBox(
                          height: 21,
                        ),
                        Text(
                          'Headpiece with wings of dragonflies very elegantly '
                          'complement to your look at special events, parties '
                          'weddings or just can bring to your everyday cloths more '
                          'orginality',
                          style: TextStyle(fontSize: 8, letterSpacing: 2),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        SizedBox(
                          height: 38,
                          child: Row(
                            children: [
                              Expanded(
                                  flex: 2,
                                  child: Text(
                                    '\$55',
                                    style: TextStyle(),
                                  )),
                              Expanded(
                                  flex: 8,
                                  child: GestureDetector(
                                    onTap: () =>
                                        Navigator.of(context).pushNamed('/'),
                                    child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(16)),
                                            color: Color(0xff8c6e6b)),
                                        child: Center(
                                          child: Text(
                                            'see details',
                                            style: GoogleFonts.merriweather(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Colors.white),
                                          ),
                                        )),
                                  ))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(color: Colors.red),
                  ),
                  Container(
                    decoration: BoxDecoration(color: Colors.orange),
                  ),
                  Container(
                    decoration: BoxDecoration(color: Colors.purple),
                  )
                ],
              ))
        ],
      ),
    );
  }
}

class HandMadeHomePage extends StatefulWidget {
  const HandMadeHomePage({Key? key}) : super(key: key);

  @override
  State<HandMadeHomePage> createState() => _HandMadeHomePageState();
}

class _HandMadeHomePageState extends State<HandMadeHomePage> {
  final PageController _pageController = PageController(viewportFraction: 0.9);
  List<Widget> _buildBackground() {
    return [
      Positioned(
          left: 0,
          right: 0,
          top: 0,
          child: Container(
            height: MediaQuery.of(context).size.height / 2.5,
            decoration: BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                    image: NetworkImage(
                        'https://cdn.pixabay.com/photo/2017/09/21/07/47/girl-2771001_960_720.jpg'),
                    fit: BoxFit.cover,
                    colorFilter:
                        ColorFilter.mode(Colors.grey, BlendMode.color))),
          )),
      Positioned(
          left: 0,
          right: 0,
          top: MediaQuery.of(context).size.height / 2.5,
          child: Container(
            height: MediaQuery.of(context).size.height / 3.4,
            color: Colors.white,
          )),
      Positioned(
          left: 0,
          right: 0,
          top: MediaQuery.of(context).size.height / 2.5 * 1.75,
          child: Container(
            height: MediaQuery.of(context).size.height / 2.5,
            color: Color(0xffc5bcbc),
          )),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ..._buildBackground(),
          Positioned(
              left: 24,
              right: 0,
              top: MediaQuery.of(context).size.height / 3,
              child: Container(
                height: 100,
                child: PageView(
                  controller: _pageController,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                          left: 16, top: 24, bottom: 24, right: 16),
                      margin: EdgeInsets.only(right: 24),
                      decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(24),
                            bottomLeft: Radius.circular(24),
                          )),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'METAMORPHOSE',
                            style: GoogleFonts.openSans(
                                color: Colors.white, letterSpacing: 2),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'BIRD BROOCH',
                                style: GoogleFonts.merriweather(
                                    fontSize: 20,
                                    color: Colors.white,
                                    letterSpacing: 4),
                              ),
                              GestureDetector(
                                onTap: () =>
                                    Navigator.of(context).pushNamed('/home'),
                                child: Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 24),
                      decoration: BoxDecoration(
                          color: secondaryColor,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(24),
                              bottomLeft: Radius.circular(24))),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 24),
                      decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(24),
                              bottomLeft: Radius.circular(24))),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 24),
                      decoration: BoxDecoration(
                          color: secondaryColor,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(24),
                              bottomLeft: Radius.circular(24))),
                    )
                  ],
                ),
              )),
          Positioned(
              left: 0,
              right: 0,
              top: MediaQuery.of(context).size.height / 2.1,
              child: Container(
                height: 32,
                child: Center(
                  child: SmoothPageIndicator(
                    controller: _pageController,
                    count: 4,
                    effect: WormEffect(
                        dotWidth: 10,
                        dotHeight: 10,
                        activeDotColor: primaryColor,
                        dotColor: secondaryColor),
                  ),
                ),
              )),
          Positioned(
              left: 24,
              right: 0,
              top: MediaQuery.of(context).size.height / 1.85,
              child: Container(
                height: MediaQuery.of(context).size.height / 2,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Best Sellers',
                          style: GoogleFonts.merriweather(
                              fontSize: 22, letterSpacing: 2)),
                      SizedBox(
                        height: 24,
                      ),
                      Container(
                          height: 180,
                          child: ListView.builder(
                              itemCount: bestSellers.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Container(
                                  width: 120,
                                  margin: EdgeInsets.only(right: 16),
                                  child: Column(
                                    children: [
                                      Expanded(
                                          flex: 6,
                                          child: Container(
                                            height: double.infinity,
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: NetworkImage(
                                                        '${bestSellers[index].img}'),
                                                    fit: BoxFit.cover)),
                                          )),
                                      Expanded(
                                          flex: 3,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                  flex: 1,
                                                  child: Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Text(
                                                      '${bestSellers[index].title}',
                                                      style: TextStyle(
                                                          fontSize: 13,
                                                          color: primaryColor),
                                                    ),
                                                  )),
                                              Expanded(
                                                  flex: 1,
                                                  child: Row(
                                                    children: [
                                                      Expanded(
                                                        flex: 3,
                                                        child: Text(
                                                          '\$${bestSellers[index].price}',
                                                          style: TextStyle(
                                                              fontSize: 16),
                                                        ),
                                                      ),
                                                      Expanded(
                                                          flex: 6,
                                                          child: bestSellers[
                                                                      index]
                                                                  .freeDelivery
                                                              ? Container(
                                                                  margin: EdgeInsets
                                                                      .symmetric(
                                                                          vertical:
                                                                              3),
                                                                  decoration: BoxDecoration(
                                                                      color: Colors
                                                                          .white,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              3)),
                                                                  child: Center(
                                                                    child: Text(
                                                                      'Free delivery',
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              12,
                                                                          color:
                                                                              primaryColor),
                                                                    ),
                                                                  ),
                                                                )
                                                              : Container())
                                                    ],
                                                  ))
                                            ],
                                          ))
                                    ],
                                  ),
                                );
                              })),
                      SizedBox(
                        height: 24,
                      ),
                      Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height / 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('New Arrivals',
                                style: GoogleFonts.merriweather(
                                    fontSize: 22, letterSpacing: 2)),
                            SizedBox(
                              height: 16,
                            ),
                            Container(
                              height: 150,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://cdn.pixabay.com/photo/2017/08/30/12/45/girl-2696947_960_720.jpg'),
                                      fit: BoxFit.cover)),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
