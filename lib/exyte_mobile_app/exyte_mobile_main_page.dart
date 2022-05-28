import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExyteMobile extends StatelessWidget {
  const ExyteMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SecondPage(),
    );
  }
}

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Stack(
        children: [
          Positioned(
              left: 0,
              top: 48,
              bottom: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(48),
                        topLeft: Radius.circular(48)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          blurRadius: 5,
                          spreadRadius: 4,
                          offset: Offset(-4, -8))
                    ]),
                padding: EdgeInsets.only(left: 32, top: 38),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Aerum',
                      style: GoogleFonts.montserrat().copyWith(fontSize: 22),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 32),
                      height: 260,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://www.mentalhealth.org.uk/sites/default/files/values-Making-a-difference-no-background-bleed-web-ready.png'),
                              fit: BoxFit.fitHeight,
                              colorFilter: ColorFilter.mode(
                                  Colors.white, BlendMode.saturation))),
                    ),
                    Text(
                      'Work process',
                      style: GoogleFonts.montserrat().copyWith(fontSize: 20),
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 8,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 130,
                            margin:
                                EdgeInsets.only(right: 16, top: 8, bottom: 8),
                            decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(16)),
                            child: Row(
                              children: [
                                Expanded(
                                    flex: 2,
                                    child: Center(child: Icon(Icons.apps))),
                                Expanded(
                                    flex: 3,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text('7 days',
                                            style: GoogleFonts.montserrat()),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Text('Design',
                                            style: GoogleFonts.montserrat(
                                                color: Colors.grey,
                                                fontSize: 12)),
                                      ],
                                    ))
                              ],
                            ),
                          );
                        },
                        itemCount: 4,
                      ),
                    )
                  ],
                ),
              )),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: MediaQuery.of(context).size.height / 3.3,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(48),
                        topRight: Radius.circular(48))),
                padding:
                    EdgeInsets.only(left: 32, top: 32, bottom: 8, right: 32),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Description',
                        style: GoogleFonts.montserrat()
                            .copyWith(color: Colors.white, fontSize: 18)),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                        'On the other hand, we denouncewith nighteous indignation and dislike men who are so '
                        'beguiled and demoralized by charms',
                        style: GoogleFonts.montserrat()
                            .copyWith(color: Colors.white, fontSize: 12)),
                    Row(
                      children: [
                        Container(
                          height: 24,
                          width: 80,
                          margin: EdgeInsets.only(right: 8),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8)),
                          child: Center(
                            child: Text(
                              'Fintech',
                              style: GoogleFonts.montserrat(),
                            ),
                          ),
                        ),
                        Container(
                          height: 24,
                          width: 80,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8)),
                          child: Center(
                              child: Text(
                            'Platform',
                            style: GoogleFonts.montserrat(),
                          )),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Container(
                      height: 32,
                      width: double.infinity,
                      child: Stack(
                        children: [
                          CircleAvatar(),
                          Positioned(
                              top: 0,
                              bottom: 0,
                              left: 16,
                              child: CircleAvatar(
                                backgroundColor: Colors.red,
                              )),
                          Positioned(
                              top: 0,
                              bottom: 0,
                              left: 32,
                              child: CircleAvatar(
                                backgroundColor: Colors.amber,
                              )),
                          Positioned(
                              top: 0,
                              bottom: 0,
                              left: 48,
                              child: CircleAvatar(
                                backgroundColor: Colors.pinkAccent,
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
