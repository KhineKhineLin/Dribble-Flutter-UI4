import 'package:flutter/material.dart';

class Traveler extends StatelessWidget {
  const Traveler({Key? key}) : super(key: key);

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

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 48),
        child: Column(
          children: [
            Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Traveler',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Icon(Icons.search),
                        SizedBox(
                          width: 16,
                        ),
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://cdn.pixabay.com/photo/2017/05/11/08/48/woman-2303361_960_720.jpg'),
                        )
                      ],
                    ),
                    Text(
                      'Finding your traveler experience',
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    )
                  ],
                )),
            Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Row(
                          children: [
                            Text(
                              'Popular',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            Text(
                              'see more',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 234,
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return Container(
                              width: 154,
                              margin:
                                  EdgeInsets.only(right: 16, top: 8, bottom: 8),
                              decoration: BoxDecoration(
                                  color: Colors.teal,
                                  borderRadius: BorderRadius.circular(16),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://cdn.pixabay.com/photo/2018/06/13/18/20/waves-3473335_960_720.jpg'),
                                      colorFilter: ColorFilter.mode(
                                          Colors.black.withOpacity(0.2),
                                          BlendMode.darken),
                                      fit: BoxFit.cover)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 38,
                                          width: 38,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.white),
                                              shape: BoxShape.circle,
                                              image: DecorationImage(
                                                  image: NetworkImage(
                                                      'https://cdn.pixabay.com/photo/2018/01/06/09/25/hijab-3064633_960_720.jpg'),
                                                  fit: BoxFit.cover)),
                                        ),
                                        Spacer(),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 14,
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Text(
                                          '4.8',
                                          style: TextStyle(color: Colors.white),
                                        )
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'Millford Sound,\nNew Zealand',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'Jun 4, 2022',
                                      style: TextStyle(
                                          color: Colors.white.withOpacity(0.6)),
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                          itemCount: 5,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                        ),
                      )
                    ],
                  ),
                )),
            Expanded(
                flex: 1,
                child: TabBar(
                  controller: _tabController,
                  isScrollable: true,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorPadding: EdgeInsets.zero,
                  labelColor: Colors.black,
                  indicatorColor: Colors.black,
                  tabs: [
                    Tab(
                      text: 'Recommended',
                    ),
                    Tab(
                      text: 'New',
                    ),
                    Tab(
                      text: 'Rating',
                    ),
                    Tab(
                      text: 'Favourite',
                    )
                  ],
                )),
            Expanded(
                flex: 3,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Container(
                      height: 240,
                      child: Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: Column(
                                children: [
                                  Expanded(
                                      flex: 1,
                                      child: Container(
                                        margin: EdgeInsets.only(
                                            left: 16,
                                            right: 16,
                                            top: 8,
                                            bottom: 8),
                                        decoration: BoxDecoration(
                                            color: Colors.black,
                                            borderRadius:
                                                BorderRadius.circular(16),
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    'https://cdn.pixabay.com/photo/2016/11/22/23/53/starfish-1851289_960_720.jpg'),
                                                fit: BoxFit.cover)),
                                        child: Stack(
                                          children: [
                                            Positioned(
                                                right: 8,
                                                top: 16,
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.yellow,
                                                      size: 14,
                                                    ),
                                                    SizedBox(
                                                      width: 8,
                                                    ),
                                                    Text(
                                                      '2.2',
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    )
                                                  ],
                                                )),
                                            Positioned(
                                                bottom: 8,
                                                left: 8,
                                                right: 24,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Rang Yai island, Ko Kaeo, Thailand',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 14),
                                                    ),
                                                  ],
                                                ))
                                          ],
                                        ),
                                      )),
                                  Expanded(
                                      flex: 1,
                                      child: Container(
                                        margin: EdgeInsets.only(
                                            left: 16,
                                            right: 16,
                                            top: 8,
                                            bottom: 8),
                                        decoration: BoxDecoration(
                                            color: Colors.black,
                                            borderRadius:
                                                BorderRadius.circular(16),
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    'https://cdn.pixabay.com/photo/2015/06/19/21/33/seagulls-815304_960_720.jpg'),
                                                fit: BoxFit.cover)),
                                        child: Stack(
                                          children: [
                                            Positioned(
                                                right: 8,
                                                top: 16,
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.yellow,
                                                      size: 14,
                                                    ),
                                                    SizedBox(
                                                      width: 8,
                                                    ),
                                                    Text(
                                                      '3.2',
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    )
                                                  ],
                                                )),
                                            Positioned(
                                                bottom: 8,
                                                left: 8,
                                                right: 24,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Rang Yai island, Ko Kaeo, Thailand',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 14),
                                                    ),
                                                  ],
                                                ))
                                          ],
                                        ),
                                      ))
                                ],
                              )),
                          Expanded(
                              flex: 1,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 2, right: 16, top: 8, bottom: 8),
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(16),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            'https://cdn.pixabay.com/photo/2014/08/15/11/29/beach-418742_960_720.jpg'),
                                        fit: BoxFit.cover,
                                        colorFilter: ColorFilter.mode(
                                            Colors.black.withOpacity(0.2),
                                            BlendMode.darken))),
                                child: Stack(
                                  children: [
                                    Positioned(
                                        right: 8,
                                        top: 16,
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                              size: 14,
                                            ),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            Text(
                                              '4.2',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            )
                                          ],
                                        )),
                                    Positioned(
                                        bottom: 8,
                                        left: 8,
                                        right: 24,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Rang Yai island, Ko Kaeo, Thailand',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14),
                                            ),
                                            SizedBox(
                                              height: 8,
                                            ),
                                            Text(
                                              'Jun 4, 2022',
                                              style: TextStyle(
                                                  color: Colors.white
                                                      .withOpacity(0.4)),
                                            )
                                          ],
                                        ))
                                  ],
                                ),
                              ))
                        ],
                      ),
                    ),
                    Container(
                      height: 240,
                      child: Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: Column(
                                children: [
                                  Expanded(
                                      flex: 1,
                                      child: Container(
                                        margin: EdgeInsets.only(
                                            left: 16,
                                            right: 16,
                                            top: 8,
                                            bottom: 8),
                                        decoration: BoxDecoration(
                                            color: Colors.black,
                                            borderRadius:
                                                BorderRadius.circular(16),
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    'https://cdn.pixabay.com/photo/2016/08/08/09/47/myanmar-1577961_960_720.jpg'),
                                                fit: BoxFit.cover)),
                                        child: Stack(
                                          children: [
                                            Positioned(
                                                right: 8,
                                                top: 16,
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.yellow,
                                                      size: 14,
                                                    ),
                                                    SizedBox(
                                                      width: 8,
                                                    ),
                                                    Text(
                                                      '1.2',
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    )
                                                  ],
                                                )),
                                            Positioned(
                                                bottom: 8,
                                                left: 8,
                                                right: 24,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Bagan  Township, Mandalay, Myanmar',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 14),
                                                    )
                                                  ],
                                                ))
                                          ],
                                        ),
                                      )),
                                  Expanded(
                                      flex: 1,
                                      child: Container(
                                        margin: EdgeInsets.only(
                                            left: 16,
                                            right: 16,
                                            top: 8,
                                            bottom: 8),
                                        decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  'https://cdn.pixabay.com/photo/2016/09/16/10/27/burma-1673707_960_720.jpg'),
                                              fit: BoxFit.cover),
                                        ),
                                        child: Stack(
                                          children: [
                                            Positioned(
                                                right: 8,
                                                top: 16,
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.yellow,
                                                      size: 14,
                                                    ),
                                                    SizedBox(
                                                      width: 8,
                                                    ),
                                                    Text(
                                                      '4.2',
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    )
                                                  ],
                                                )),
                                            Positioned(
                                                bottom: 8,
                                                left: 8,
                                                right: 24,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Bagan  Township, Mandalay, Myanmar',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 14),
                                                    )
                                                  ],
                                                ))
                                          ],
                                        ),
                                      ))
                                ],
                              )),
                          Expanded(
                              flex: 1,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 2, right: 16, top: 8, bottom: 8),
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(16),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            'https://cdn.pixabay.com/photo/2017/08/11/08/38/myanmar-2629995_960_720.jpg'),
                                        fit: BoxFit.cover,
                                        colorFilter: ColorFilter.mode(
                                            Colors.black.withOpacity(0.2),
                                            BlendMode.darken))),
                                child: Stack(
                                  children: [
                                    Positioned(
                                        right: 8,
                                        top: 16,
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                              size: 14,
                                            ),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            Text(
                                              '4.2',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            )
                                          ],
                                        )),
                                    Positioned(
                                        bottom: 8,
                                        left: 8,
                                        right: 24,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Bagan  Township, Mandalay, Myanmar',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14),
                                            ),
                                            SizedBox(
                                              height: 8,
                                            ),
                                            Text(
                                              'April 1, 2022',
                                              style: TextStyle(
                                                  color: Colors.white
                                                      .withOpacity(0.4)),
                                            )
                                          ],
                                        ))
                                  ],
                                ),
                              ))
                        ],
                      ),
                    ),
                    Container(
                      height: 240,
                      child: Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: Column(
                                children: [
                                  Expanded(
                                      flex: 1,
                                      child: Container(
                                        margin: EdgeInsets.only(
                                            left: 16,
                                            right: 16,
                                            top: 8,
                                            bottom: 8),
                                        decoration: BoxDecoration(
                                            color: Colors.black,
                                            borderRadius:
                                                BorderRadius.circular(16),
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    'https://cdn.pixabay.com/photo/2016/11/14/11/29/myanmar-1823222_960_720.jpg'),
                                                fit: BoxFit.cover)),
                                        child: Stack(
                                          children: [
                                            Positioned(
                                                right: 8,
                                                top: 16,
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.yellow,
                                                      size: 14,
                                                    ),
                                                    SizedBox(
                                                      width: 8,
                                                    ),
                                                    Text(
                                                      '2.2',
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    )
                                                  ],
                                                )),
                                            Positioned(
                                                bottom: 8,
                                                left: 8,
                                                right: 24,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Bagan  Township, Mandalay, Myanmar',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 14),
                                                    )
                                                  ],
                                                ))
                                          ],
                                        ),
                                      )),
                                  Expanded(
                                      flex: 1,
                                      child: Container(
                                        margin: EdgeInsets.only(
                                            left: 16,
                                            right: 16,
                                            top: 8,
                                            bottom: 8),
                                        decoration: BoxDecoration(
                                            color: Colors.black,
                                            borderRadius:
                                                BorderRadius.circular(16),
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    'https://cdn.pixabay.com/photo/2017/08/21/07/01/myanmar-2664302_960_720.jpg'),
                                                fit: BoxFit.cover)),
                                        child: Stack(
                                          children: [
                                            Positioned(
                                                right: 8,
                                                top: 16,
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.yellow,
                                                      size: 14,
                                                    ),
                                                    SizedBox(
                                                      width: 8,
                                                    ),
                                                    Text(
                                                      '3.2',
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    )
                                                  ],
                                                )),
                                            Positioned(
                                                bottom: 8,
                                                left: 8,
                                                right: 24,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Bagan Township, Mandalay, Myanmar',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 14),
                                                    )
                                                  ],
                                                ))
                                          ],
                                        ),
                                      ))
                                ],
                              )),
                          Expanded(
                              flex: 1,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 2, right: 16, top: 8, bottom: 8),
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(16),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            'https://cdn.pixabay.com/photo/2014/09/12/19/01/bagan-443194_960_720.jpg'),
                                        fit: BoxFit.cover,
                                        colorFilter: ColorFilter.mode(
                                            Colors.black.withOpacity(0.2),
                                            BlendMode.darken))),
                                child: Stack(
                                  children: [
                                    Positioned(
                                        right: 8,
                                        top: 16,
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                              size: 14,
                                            ),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            Text(
                                              '4.2',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            )
                                          ],
                                        )),
                                    Positioned(
                                        bottom: 8,
                                        left: 8,
                                        right: 24,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Bagan Township, Mandalay, Myanmar',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14),
                                            ),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            Text(
                                              'April 2, 2022',
                                              style: TextStyle(
                                                  color: Colors.white
                                                      .withOpacity(0.4)),
                                            )
                                          ],
                                        ))
                                  ],
                                ),
                              ))
                        ],
                      ),
                    ),
                    Container(
                      height: 240,
                      child: Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: Column(
                                children: [
                                  Expanded(
                                      flex: 1,
                                      child: Container(
                                        margin: EdgeInsets.only(
                                            left: 16,
                                            right: 16,
                                            bottom: 8,
                                            top: 8),
                                        decoration: BoxDecoration(
                                            color: Colors.black,
                                            borderRadius:
                                                BorderRadius.circular(16),
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    'https://cdn.pixabay.com/photo/2020/02/16/16/57/asia-4854182_960_720.jpg'),
                                                fit: BoxFit.cover)),
                                        child: Stack(
                                          children: [
                                            Positioned(
                                                right: 8,
                                                top: 16,
                                                child: Row(
                                                  children: [
                                                    Icon(Icons.star,
                                                        color: Colors.yellow,
                                                        size: 14),
                                                    SizedBox(
                                                      width: 8,
                                                    ),
                                                    Text(
                                                      '2.2',
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    )
                                                  ],
                                                )),
                                            Positioned(
                                                bottom: 8,
                                                left: 8,
                                                right: 24,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Bagan Township, Mandalay, Myanmar',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 14),
                                                    )
                                                  ],
                                                ))
                                          ],
                                        ),
                                      )),
                                  Expanded(
                                      flex: 1,
                                      child: Container(
                                        margin: EdgeInsets.only(
                                            left: 16,
                                            right: 16,
                                            bottom: 8,
                                            top: 8),
                                        decoration: BoxDecoration(
                                            color: Colors.black,
                                            borderRadius:
                                                BorderRadius.circular(16),
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    'https://cdn.pixabay.com/photo/2022/02/14/04/21/myanmar-7012444_960_720.jpg'),
                                                fit: BoxFit.cover)),
                                        child: Stack(
                                          children: [
                                            Positioned(
                                                right: 8,
                                                top: 16,
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.yellow,
                                                      size: 14,
                                                    ),
                                                    SizedBox(
                                                      width: 8,
                                                    ),
                                                    Text(
                                                      '3.2',
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    )
                                                  ],
                                                )),
                                            Positioned(
                                                bottom: 8,
                                                left: 8,
                                                right: 24,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Bagan Township, Mandalay, Myanmar',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 14),
                                                    )
                                                  ],
                                                ))
                                          ],
                                        ),
                                      ))
                                ],
                              )),
                          Expanded(
                              flex: 1,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 2, right: 16, top: 8, bottom: 8),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            'https://cdn.pixabay.com/photo/2014/09/12/18/56/buddha-443187_960_720.jpg'),
                                        fit: BoxFit.cover,
                                        colorFilter: ColorFilter.mode(
                                            Colors.black.withOpacity(0.2),
                                            BlendMode.darken))),
                                child: Stack(
                                  children: [
                                    Positioned(
                                        right: 8,
                                        top: 16,
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                              size: 14,
                                            ),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            Text(
                                              '4.2',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            )
                                          ],
                                        )),
                                    Positioned(
                                        bottom: 8,
                                        left: 8,
                                        right: 24,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Bagan Township, Mandalay, Myanmar',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14),
                                            ),
                                            SizedBox(
                                              height: 8,
                                            ),
                                            Text(
                                              'April 3, 2022',
                                              style: TextStyle(
                                                  color: Colors.white
                                                      .withOpacity(0.4)),
                                            )
                                          ],
                                        ))
                                  ],
                                ),
                              ))
                        ],
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
