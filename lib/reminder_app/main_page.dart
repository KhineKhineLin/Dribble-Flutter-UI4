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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        )),
                    Badge(
                      child: Icon(
                        Icons.notifications_none,
                        color: Colors.white,
                        size: 32,
                      ),
                      position: BadgePosition.topStart(),
                    )
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 32),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              'SHARED REMINDERS',
                              style: TextStyle(
                                  color: Colors.blue.shade300,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ),
                        )),
                    SizedBox(
                      height: 24,
                    ),
                    Expanded(
                        flex: 5,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 32),
                          child: ListView(
                            reverse: true,
                            scrollDirection: Axis.horizontal,
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                    right: 4, top: 8, bottom: 8),
                                width: 64,
                                decoration: BoxDecoration(
                                    color: Colors.blue.shade50,
                                    borderRadius: BorderRadius.circular(48)),
                                padding: EdgeInsets.symmetric(vertical: 9),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CircleAvatar(
                                      radius: 24,
                                      backgroundImage: NetworkImage(
                                          'https://cdn.pixabay.com/photo/2015/01/06/16/14/woman-590490_960_720.jpg'),
                                    ),
                                    Text(
                                      'DR',
                                      style: TextStyle(
                                          color: Colors.blueGrey,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    right: 4, top: 24, bottom: 8),
                                width: 64,
                                decoration: BoxDecoration(
                                    color: Colors.red.shade500,
                                    borderRadius: BorderRadius.circular(48),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.red.shade50,
                                          blurRadius: 7,
                                          spreadRadius: 10)
                                    ]),
                                padding: EdgeInsets.symmetric(vertical: 9),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CircleAvatar(
                                      radius: 24,
                                      backgroundImage: NetworkImage(
                                          'https://cdn.pixabay.com/photo/2018/03/12/12/32/woman-3219507_960_720.jpg'),
                                    ),
                                    Text(
                                      'DR',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    right: 4, top: 8, bottom: 20),
                                width: 64,
                                decoration: BoxDecoration(
                                    color: Colors.blue.shade50,
                                    borderRadius: BorderRadius.circular(48)),
                                padding: EdgeInsets.symmetric(vertical: 9),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CircleAvatar(
                                      radius: 24,
                                      backgroundImage: NetworkImage(
                                          'https://cdn.pixabay.com/photo/2015/03/03/08/55/portrait-657116_960_720.jpg'),
                                    ),
                                    Text(
                                      'DR',
                                      style: TextStyle(
                                          color: Colors.blueGrey,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    right: 4, top: 8, bottom: 20),
                                width: 64,
                                decoration: BoxDecoration(
                                    color: Colors.blue.shade50,
                                    borderRadius: BorderRadius.circular(48)),
                                padding: EdgeInsets.symmetric(vertical: 9),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CircleAvatar(
                                      radius: 24,
                                      backgroundImage: NetworkImage(
                                          'https://cdn.pixabay.com/photo/2015/11/26/00/14/woman-1063100_960_720.jpg'),
                                    ),
                                    Text(
                                      'DR',
                                      style: TextStyle(
                                          color: Colors.blueGrey,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    right: 4, top: 8, bottom: 20),
                                width: 64,
                                decoration: BoxDecoration(
                                    color: Colors.blue.shade50,
                                    borderRadius: BorderRadius.circular(48)),
                                padding: EdgeInsets.symmetric(vertical: 9),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CircleAvatar(
                                      radius: 24,
                                      backgroundImage: NetworkImage(
                                          'https://cdn.pixabay.com/photo/2015/06/12/21/58/child-807547_960_720.jpg'),
                                    ),
                                    Text(
                                      'DR',
                                      style: TextStyle(
                                          color: Colors.blueGrey,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )),
                    SizedBox(
                      height: 4,
                    ),
                    Expanded(
                        flex: 6,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 32),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                  flex: 2,
                                  child: Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Text(
                                      'LASTEST REMINDERS',
                                      style: TextStyle(
                                          color: Colors.blue.shade300,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )),
                              Expanded(
                                  flex: 8,
                                  child: ListView(
                                    children: [
                                      Container(
                                        height: 72,
                                        child: Row(
                                          children: [
                                            Expanded(
                                                flex: 2,
                                                child: Container(
                                                  margin: EdgeInsets.all(7),
                                                  decoration: BoxDecoration(
                                                      color:
                                                          Colors.blue.shade50,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8)),
                                                  child: Center(
                                                    child:
                                                        Icon(Icons.folder_open),
                                                  ),
                                                )),
                                            Expanded(
                                                flex: 7,
                                                child: Container(
                                                  padding:
                                                      EdgeInsets.only(left: 12),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        'New Job Activities',
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Colors
                                                                .blue.shade200),
                                                      ),
                                                      Text(
                                                        '3 Jun 2022',
                                                        style: TextStyle(
                                                            color: Colors
                                                                .blue.shade200,
                                                            fontWeight:
                                                                FontWeight.w300,
                                                            fontSize: 15,
                                                            letterSpacing: 1.2),
                                                      )
                                                    ],
                                                  ),
                                                ))
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: 72,
                                        child: Row(
                                          children: [
                                            Expanded(
                                                flex: 2,
                                                child: Container(
                                                  margin: EdgeInsets.all(7),
                                                  decoration: BoxDecoration(
                                                      color:
                                                          Colors.blue.shade50,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8)),
                                                  child: Center(
                                                    child:
                                                        Icon(Icons.folder_open),
                                                  ),
                                                )),
                                            Expanded(
                                                flex: 7,
                                                child: Container(
                                                  padding:
                                                      EdgeInsets.only(left: 12),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        'New Job Activities',
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Colors
                                                                .blue.shade200),
                                                      ),
                                                      Text(
                                                        '2 Jun 2022',
                                                        style: TextStyle(
                                                            color: Colors
                                                                .blue.shade200,
                                                            fontWeight:
                                                                FontWeight.w300,
                                                            fontSize: 15,
                                                            letterSpacing: 1.2),
                                                      )
                                                    ],
                                                  ),
                                                ))
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: 72,
                                        child: Row(
                                          children: [
                                            Expanded(
                                                flex: 2,
                                                child: Container(
                                                  margin: EdgeInsets.all(7),
                                                  decoration: BoxDecoration(
                                                      color:
                                                          Colors.blue.shade50,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8)),
                                                  child: Center(
                                                    child:
                                                        Icon(Icons.folder_open),
                                                  ),
                                                )),
                                            Expanded(
                                                flex: 7,
                                                child: Container(
                                                  padding:
                                                      EdgeInsets.only(left: 12),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        'New Job Activities',
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Colors
                                                                .blue.shade200),
                                                      ),
                                                      Text(
                                                        '1 Jun 2022',
                                                        style: TextStyle(
                                                            color: Colors
                                                                .blue.shade200,
                                                            fontWeight:
                                                                FontWeight.w300,
                                                            fontSize: 15,
                                                            letterSpacing: 1.2),
                                                      )
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
                        ))
                  ],
                ),
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
