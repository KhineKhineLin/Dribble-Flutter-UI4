import 'package:flutter/material.dart';

class AnicornWatch extends StatelessWidget {
  const AnicornWatch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DetailPage(),
    );
  }
}

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              top: 0,
              left: 0,
              right: 8,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    gradient: LinearGradient(colors: [
                      Colors.redAccent,
                      Colors.redAccent.withOpacity(0.8),
                      Colors.orange.shade200
                    ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(34))),
                height: 280,
                child: Stack(
                  children: [
                    Positioned(
                        right: 16,
                        top: 16,
                        bottom: 24,
                        child: Container(
                          width: 140,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(16)),
                        ))
                  ],
                ),
              )),
          Positioned(
              left: 0,
              top: 0,
              bottom: 0,
              child: Container(
                width: 160,
                decoration: BoxDecoration(color: Colors.grey[200]),
              )),
          Positioned(
              top: 16,
              left: 16,
              right: 16,
              child: AppBar(
                actions: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.add_shopping_cart))
                ],
                backgroundColor: Colors.transparent,
                elevation: 0,
                leading: IconButton(
                  icon: Icon(Icons.arrow_back),
                  color: Colors.black,
                  onPressed: () {},
                ),
              )),
          Positioned(
              left: 24,
              top: 120,
              child: Container(
                height: 300,
                width: 120,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Series'.toUpperCase(),
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      '000'.toUpperCase(),
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      'size'.toUpperCase(),
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Small',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      'price'.toUpperCase(),
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      '\$510'.toUpperCase(),
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Container(
                      height: 54,
                      width: 54,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                              colors: [
                                Colors.redAccent,
                                Colors.orange.shade200
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.red.shade50,
                                blurRadius: 10,
                                spreadRadius: 10)
                          ]),
                      child: Center(
                        child: Icon(
                          Icons.add_shopping_cart,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              )),
          Positioned(
            left: 120,
            top: 72,
            child: Container(
              width: 210,
              height: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://cdn.tmobile.com/content/dam/t-mobile/en-p/internet-devices/apple/Apple-Watch-Series-7-45mm/Starlight-Aluminum-Starlight-Sport-Band/Apple-Watch-Series-7-45mm-Starlight-Aluminum-Starlight-Sport-Band-frontimage.png'),
                  fit: BoxFit.fitHeight
                )
              ),
            ))
        ],
      ),
    );
  }
}
