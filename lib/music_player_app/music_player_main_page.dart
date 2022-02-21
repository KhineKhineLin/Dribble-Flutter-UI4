import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color backgroundColor = Color(0xff7800ee);

class MusicPlayerApp extends StatelessWidget {
  const MusicPlayerApp({Key? key}) : super(key: key);

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
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: [
          Positioned(
              left: 48,
              top: 0,
              right: 0,
              child: Container(
                height: MediaQuery.of(context).size.height / 2.1,
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(42)),
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://media3.giphy.com/media/J7vL9kmhsRfDgiT3kt/200w.webp?cid=ecf05e473nlnfx2nd8w52nqfe6kw9el1qcedzb9r3ivq6lib&rid=200w.webp&ct=s'),
                        fit: BoxFit.cover)),
              )),
          Positioned(
              right: 48,
              top: MediaQuery.of(context).size.height / 2.4,
              child: Container(
                height: 84,
                width: 84,
                decoration:
                    BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                child: Center(
                  child: Icon(
                    Icons.play_arrow,
                    color: backgroundColor,
                    size: 48,
                  ),
                ),
              )),
          Positioned(
            bottom: 0,
            right: 0,
            left: 48,
            child: Container(
              height: MediaQuery.of(context).size.height / 2.7,
              padding: EdgeInsets.only(left: 24, top: 24),
              decoration: BoxDecoration(
                  color: Color(0xff6e00db),
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(42))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Recent Songs',
                    style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  Container(
                    height: 205,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 16, left: 0),
                          width: MediaQuery.of(context).size.width / 1.8,
                          decoration: BoxDecoration(
                              //color: Colors.yellow
                              ),
                          child: ListView.builder(
                            padding: EdgeInsets.zero,
                            itemBuilder: (BuildContext context, int index) =>
                                Container(
                              height: 84,
                              margin: EdgeInsets.only(bottom: 16),
                              decoration: BoxDecoration(
                                  //color: Colors.purple
                                  ),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 32,
                                    backgroundImage: NetworkImage(
                                        'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
                                  ),
                                  SizedBox(
                                    width: 9,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Secrets',
                                        style: GoogleFonts.montserrat(
                                            color: Colors.white, fontSize: 18),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        'Not a Hobby 2020',
                                        style: GoogleFonts.montserrat(
                                            color: Colors.grey.shade200),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 16, left: 24),
                          width: MediaQuery.of(context).size.width / 1.8,
                          decoration: BoxDecoration(
                              //color: Colors.yellow
                              ),
                          child: ListView.builder(
                              padding: EdgeInsets.zero,
                              itemBuilder: (BuildContext context, int index) =>
                                  Container(
                                    height: 84,
                                    margin: EdgeInsets.only(bottom: 16),
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 32,
                                          backgroundImage: NetworkImage(
                                              'https://images.unsplash.com/photo-1645390747975-fb637273ca5e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
                                        ),
                                        SizedBox(
                                          width: 9,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Secrets',
                                              style: GoogleFonts.montserrat(
                                                  color: Colors.white,
                                                  fontSize: 18),
                                            ),
                                            SizedBox(
                                              height: 4,
                                            ),
                                            Text(
                                              'Not a Hobby 2020',
                                              style: GoogleFonts.montserrat(
                                                  color: Colors.grey.shade200),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  )),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              left: 42,
              top: MediaQuery.of(context).size.height / 1.95,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Head Shaker',
                    style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.cloud_queue,
                        color: Colors.orange,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        '247k Followers',
                        style: GoogleFonts.montserrat(
                            fontSize: 14, color: Colors.white),
                      )
                    ],
                  )
                ],
              ))
        ],
      ),
    );
  }
}
