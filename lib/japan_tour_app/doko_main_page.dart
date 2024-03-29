import 'package:flutter/material.dart';

class Doko extends StatelessWidget {
  const Doko({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DokoDetailPage(),
    );
  }
}

class DokoDetailPage extends StatefulWidget {
  const DokoDetailPage({Key? key}) : super(key: key);

  @override
  State<DokoDetailPage> createState() => _DokoDetailPageState();
}

class _DokoDetailPageState extends State<DokoDetailPage> {
  Color appAccentColor = Color(0xff08175A);
  Color cardBackgroundColor = Color(0xfff5fbff);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              left: 0,
              top: 0,
              right: 0,
              child: Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                    color: appAccentColor,
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://cdn.pixabay.com/photo/2014/10/07/13/48/mountain-477832_960_720.jpg'),
                        fit: BoxFit.cover)),
                child: Stack(
                  children: [
                    Positioned(
                        left: 24,
                        right: 24,
                        top: 16,
                        child: SafeArea(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.white.withOpacity(.4),
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                              CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.white.withOpacity(.4),
                                child: Icon(
                                  Icons.share,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              )
                            ],
                          ),
                        ))
                  ],
                ),
              )),
          Positioned(
              left: 0,
              top: MediaQuery.of(context).size.height / 4,
              right: 0,
              bottom: 0,
              child: Card(
                color: cardBackgroundColor,
                margin: EdgeInsets.all(0),
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(32))),
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://cdn.pixabay.com/photo/2017/06/24/02/56/art-2436545_960_720.jpg'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Khinekhinel',
                                  style: TextStyle(
                                      color: appAccentColor,
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 4),
                                  child: Text(
                                    'Android/Flutter Developer',
                                    style: TextStyle(
                                        color: Colors.indigo[200],
                                        fontSize: 12),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Spacer(),
                          Chip(
                            label: Text(
                              'Follow',
                              style: TextStyle(color: Colors.white),
                            ),
                            backgroundColor: appAccentColor,
                            elevation: 8,
                            padding: EdgeInsets.symmetric(horizontal: 12),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Text(
                          'Tokyo Travel Guide',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: appAccentColor,
                              letterSpacing: 1.5),
                        ),
                      ),
                      Text('1.4 Reading'),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Flexible(
                            flex: 1,
                            fit: FlexFit.loose,
                            child: Container(
                              margin: EdgeInsets.symmetric(vertical: 8),
                              width: 3,
                              height: 130,
                              color: Colors.indigo[200],
                            ),
                          ),
                          Flexible(
                              fit: FlexFit.loose,
                              flex: 20,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 16),
                                child: Text(
                                  'Japan’s Mt. Fuji is an active volcano about 100 kilometers southwest of Tokyo. Commonly called “Fuji-san,” it’s the country’s tallest peak, at 3,776 meters. A pilgrimage site for centuries, it’s considered one of Japan’s 3 sacred mountains, and summit hikes remain a popular activity.',
                                  style: TextStyle(
                                      color: Colors.indigo[200], fontSize: 13),
                                ),
                              ))
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2),
                        child: Row(
                          children: [
                            Icon(
                              Icons.calendar_today,
                              color: appAccentColor,
                              size: 18,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Text(
                                '6 Days',
                                style: TextStyle(color: appAccentColor),
                              ),
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Icon(
                              Icons.attach_money,
                              size: 18,
                              color: appAccentColor,
                            ),
                            Text(
                              '1200\$ Per Person',
                              style: TextStyle(
                                  color: appAccentColor,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                      Text(
                        'Mount Fuji',
                        style: TextStyle(
                            color: appAccentColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      Text(
                        'Japan’s Mt. Fuji is an active volcano about 100 kilometers southwest of Tokyo. Commonly called “Fuji-san,”\n\n '
                        'it’s the country’s tallest peak, at 3,776 meters. A pilgrimage site for centuries.',
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w300,
                            color: appAccentColor),
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Expanded(
                            flex: 8,
                            child: Card(
                              elevation: 5,
                              color: appAccentColor,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.thumb_up,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 4),
                                      child: Text(
                                        '543',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.chat_bubble_outline,
                                      color: Colors.white,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 4),
                                      child: Text(
                                        '542',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.star_border,
                                      color: Colors.white,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 4),
                                      child: Text(
                                        '377',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                              flex: 4,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 12),
                                child: Card(
                                  elevation: 12,
                                  color: appAccentColor,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Center(
                                      child: Text(
                                        'Mentioned',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ))
                        ],
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
