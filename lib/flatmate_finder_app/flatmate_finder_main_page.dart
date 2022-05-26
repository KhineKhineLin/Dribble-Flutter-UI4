import 'package:flutter/material.dart';

class FlatmateFinder extends StatelessWidget {
  const FlatmateFinder({Key? key}) : super(key: key);

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SafeArea(
                top: true,
                child: Container(
                  height: 32,
                )),
            Container(
              height: 140,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Hi, Khinekhinel',
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Advertise your room or find',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.indigo[300],
                        fontSize: 18,
                        letterSpacing: 1.2),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'housemates with similar interests.',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.indigo[300],
                        fontSize: 18,
                        letterSpacing: 1.2),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              height: 52,
              margin: EdgeInsets.only(left: 24, right: 24),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.indigo.shade200),
                  borderRadius: BorderRadius.circular(8)),
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(6)),
                        child: Center(
                          child: Text(
                            'A Room',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )),
                  Expanded(
                      flex: 1,
                      child: Container(
                        child: Center(
                          child: Text(
                            'A Housemate',
                            style: TextStyle(
                                color: Colors.indigo[400],
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 52,
              margin: EdgeInsets.symmetric(horizontal: 24),
              decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(8)),
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Search by area or postcode',
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey[300]),
                    suffixIcon: Icon(
                      Icons.search,
                      size: 28,
                      color: Colors.black,
                    ),
                    border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Text(
                    'Recommended',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo[500]),
                  ),
                ),
                ListView(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  children: [
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                      height: 260,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                              flex: 8,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            'https://cdn.pixabay.com/photo/2016/11/18/17/20/living-room-1835923_960_720.jpg'),
                                        fit: BoxFit.cover)),
                                child: Stack(
                                  children: [
                                    Positioned(
                                        right: 16,
                                        top: 16,
                                        child: Column(
                                          children: [
                                            Container(
                                              height: 34,
                                              width: 100,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Icon(
                                                    Icons.add_location,
                                                    size: 16,
                                                  ),
                                                  Text('2.5 miles')
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 8,
                                            ),
                                            Container(
                                              height: 34,
                                              width: 100,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  '\$139/month',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                            )
                                          ],
                                        ))
                                  ],
                                ),
                              )),
                          Expanded(
                              flex: 2,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Looking for a student housemate',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              )),
                          Expanded(
                              flex: 3,
                              child: Row(
                                children: [
                                  Container(
                                    height: 48,
                                    width: 48,
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(6),
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                'https://cdn.pixabay.com/photo/2018/03/03/06/26/girl-3194977_960_720.jpg'),
                                            fit: BoxFit.cover)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('Khinekhinel',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold)),
                                        Text(
                                          '1 hours ago',
                                          style: TextStyle(fontSize: 12),
                                        )
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.more_vert))
                                ],
                              ))
                        ],
                      ),
                    ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                      height: 260,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                              flex: 8,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            'https://cdn.pixabay.com/photo/2017/08/02/01/01/living-room-2569325_960_720.jpg'),
                                        fit: BoxFit.cover)),
                                child: Stack(
                                  children: [
                                    Positioned(
                                        right: 16,
                                        top: 16,
                                        child: Column(
                                          children: [
                                            Container(
                                              height: 34,
                                              width: 100,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Icon(
                                                    Icons.add_location,
                                                    size: 16,
                                                  ),
                                                  Text('1.5 miles')
                                                ],
                                              ),
                                            ),
                                            Container(
                                              height: 34,
                                              width: 100,
                                              decoration: BoxDecoration(
                                                  color: Colors.red,
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                              child: Center(
                                                child: Text(
                                                  '\$138/month',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                            )
                                          ],
                                        ))
                                  ],
                                ),
                              )),
                          Expanded(
                              flex: 2,
                              child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Looking for a student housemate',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                    textAlign: TextAlign.center,
                                  ))),
                          Expanded(
                              flex: 3,
                              child: Row(
                                children: [
                                  Container(
                                    height: 48,
                                    width: 48,
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(6),
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                'https://cdn.pixabay.com/photo/2017/08/01/08/29/woman-2563491_960_720.jpg'),
                                            fit: BoxFit.cover)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Khinekhinel',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          '2 hours ago',
                                          style: TextStyle(fontSize: 12),
                                        )
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.more_vert))
                                ],
                              ))
                        ],
                      ),
                    ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                      height: 260,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                              flex: 8,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            'https://cdn.pixabay.com/photo/2017/09/09/18/25/living-room-2732939_960_720.jpg'),
                                        fit: BoxFit.cover)),
                                child: Stack(
                                  children: [
                                    Positioned(
                                        right: 16,
                                        top: 16,
                                        child: Column(
                                          children: [
                                            Container(
                                              height: 34,
                                              width: 100,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Icon(
                                                    Icons.add_location,
                                                    size: 16,
                                                  ),
                                                  Text('3.5 miles')
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 8,
                                            ),
                                            Container(
                                              height: 34,
                                              width: 100,
                                              decoration: BoxDecoration(
                                                  color: Colors.red,
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                              child: Center(
                                                child: Text(
                                                  '\$137/month',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                            )
                                          ],
                                        ))
                                  ],
                                ),
                              )),
                          Expanded(
                              flex: 2,
                              child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Looking for a student housemate',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                    textAlign: TextAlign.center,
                                  ))),
                          Expanded(
                              flex: 3,
                              child: Row(
                                children: [
                                  Container(
                                    height: 48,
                                    width: 48,
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(6),
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                'https://cdn.pixabay.com/photo/2017/03/05/23/14/girl-2120196_960_720.jpg'),
                                            fit: BoxFit.cover)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Khinekhinel',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          '3 hours age',
                                          style: TextStyle(fontSize: 12),
                                        )
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.more_vert))
                                ],
                              ))
                        ],
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 19,
        child: Container(
          height: 72,
          padding: EdgeInsets.symmetric(horizontal: 16),
          //decoration: BoxDecoration(color: Colors.blueGrey),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
                color: Colors.indigoAccent,
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.chat)),
              Container(
                height: 52,
                width: 52,
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.red.shade100,
                          spreadRadius: 4,
                          blurRadius: 6)
                    ]),
                child: Center(
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 38,
                  ),
                ),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
              IconButton(onPressed: () {}, icon: Icon(Icons.account_circle))
            ],
          ),
        ),
      ),
    );
  }
}
