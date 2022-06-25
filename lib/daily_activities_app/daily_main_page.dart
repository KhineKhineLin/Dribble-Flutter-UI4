import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DailyMainPage extends StatelessWidget {
  const DailyMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
          backgroundColor: Color(0xFF5E49C5),
          scaffoldBackgroundColor: Color(0xFF5E49C5),
          colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF5E49C5))),
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.only(left: 16.0, top: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Good morning',
                              style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Khinekhinel',
                              style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      )),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Card(
                          color: Theme.of(context).cardColor,
                          child: Row(
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Icon(
                                    Icons.thumb_up_outlined,
                                    color: Colors.orange,
                                    size: 42,
                                  )),
                              Expanded(
                                  flex: 2,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'High-five!',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'you can finish over 80% of your activities each day.',
                                        style: TextStyle(fontSize: 12),
                                      )
                                    ],
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: FloatingActionButton(
                                      onPressed: () {},
                                      child: Text('ok'),
                                      backgroundColor: Colors.orange,
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      ))
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 3.4,
                  child: Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Completion\nTracker',
                                  style: TextStyle(
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Text.rich(TextSpan(children: [
                                  TextSpan(text: 'You completed '),
                                  TextSpan(text: '2'),
                                  TextSpan(text: 'of'),
                                  TextSpan(text: '4\n'),
                                  TextSpan(text: 'activities so far!')
                                ]))
                              ],
                            ),
                          )),
                      Expanded(flex: 1, child: Placeholder())
                    ],
                  ),
                ),
                Row(
                  children: [
                    Text('Today\'s activities'),
                    Container(
                      height: 24,
                      width: 48,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.deepOrange)),
                    )
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
