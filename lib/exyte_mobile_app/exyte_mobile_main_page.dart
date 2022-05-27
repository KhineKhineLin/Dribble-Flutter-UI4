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
                      decoration: BoxDecoration(color: Colors.grey),
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return Container();
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
              ))
        ],
      ),
    );
  }
}
