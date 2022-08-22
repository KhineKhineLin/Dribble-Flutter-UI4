import 'package:flutter/material.dart';

class MarvieApp extends StatelessWidget {
  const MarvieApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MarvieHome(),
    );
  }
}

class MarvieHome extends StatefulWidget {
  const MarvieHome({Key? key}) : super(key: key);

  @override
  State<MarvieHome> createState() => _MarvieHomeState();
}

class _MarvieHomeState extends State<MarvieHome> {
  double viewScale = 1.0;
  double viewLeft = 0.0;
  double viewRight = 0.0;
  double viewTop = 0.0;
  double viewAngel = 0.0;

  double view2Scale = 1.0;
  double view2Left = 0.0;
  double view2Right = 0.0;
  double view2Top = 0.0;
  double view2Angel = 0.0;

  double view3Scale = 1.0;
  double view3Left = 0.0;
  double view3Right = 0.0;
  double view3Top = 0.0;
  double view3Angel = 0.0;

  double circles = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              left: 24,
              top: 24,
              right: 0,
              bottom: 24,
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 34,
                    ),
                    Container(
                      height: 84,
                      width: 84,
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(12)),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(12)),
                        child: const Center(
                          child: CircleAvatar(
                            backgroundColor: Colors.yellow,
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                      child: Text(
                        'Khinekhinel',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Row(
                        children: const [
                          Icon(Icons.shop),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Shop'),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Row(
                        children: const [
                          Icon(Icons.shop),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Payment'),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Row(
                        children: const [
                          Icon(Icons.shop),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Chat'),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Row(
                        children: const [
                          Icon(Icons.shop),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Notifications'),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Row(
                        children: const [
                          Icon(Icons.settings),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Settings'),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 34,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          viewScale = 1.0;
                          viewLeft = 0.0;
                          viewRight = 0.0;
                          viewTop = 0.0;
                          viewAngel = 0.0;

                          view2Scale = 1.0;
                          view2Left = 0.0;
                          view2Right = 0.0;
                          view2Top = 0.0;
                          view2Angel = 0.0;

                          view3Scale = 1.0;
                          view3Left = 0.0;
                          view3Right = 0.0;
                          view3Top = 0.0;
                          view3Angel = 0.0;

                          circles = 0.0;
                        });
                      },
                      child: Container(
                        width: 140,
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.circular(12)),
                        child: const Center(
                          child: Text(
                            'Next',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )),
          Positioned(
              top: viewTop,
              left: viewLeft,
              bottom: -210,
              right: viewRight,
              child: Transform.rotate(
                angle: viewAngel,
                child: Transform.scale(
                  scale: viewScale,
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    decoration: BoxDecoration(
                      color: Colors.red[400],
                      borderRadius: BorderRadius.circular(circles),
                    ),
                    child: Center(
                      child: MaterialButton(
                        onPressed: () {
                          setState(() {
                            viewScale = 0.8;
                            viewRight = MediaQuery.of(context).size.width / 2;
                            viewTop = 120;
                            viewLeft = MediaQuery.of(context).size.width / 2;
                            viewAngel = 0.2;
                          });
                        },
                        color: Colors.tealAccent,
                        child: const Text('Show Menu'),
                      ),
                    ),
                  ),
                ),
              )),
          Positioned(
              top: view2Top,
              left: view2Left,
              bottom: -210,
              right: view2Right,
              child: Transform.rotate(
                  angle: view2Angel,
                  child: Transform.scale(
                      scale: view2Scale,
                      child: AnimatedContainer(
                        duration: const Duration(seconds: 1),
                        decoration: BoxDecoration(
                            color: Colors.tealAccent[400],
                            borderRadius: BorderRadius.circular(circles)),
                        child: Center(
                          child: MaterialButton(
                            onPressed: () {
                              setState(() {
                                viewScale = 0.8;
                                viewRight =
                                    -MediaQuery.of(context).size.width / 1.8;
                                viewTop = 84;
                                viewLeft =
                                    MediaQuery.of(context).size.width / 1.5;
                                viewAngel = -0.3;

                                view2Scale = 0.8;
                                view2Right =
                                    -MediaQuery.of(context).size.width / 1.4;
                                view2Top = 24;
                                view2Left =
                                    MediaQuery.of(context).size.width / 1.3;
                                view2Angel = -0.2;

                                view3Scale = 0.8;
                                view3Right =
                                    -MediaQuery.of(context).size.width / 1.5;
                                view3Top = 0;
                                view3Left =
                                    MediaQuery.of(context).size.width / 1.1;
                                view3Angel = -0.1;
                              });
                            },
                            color: Colors.tealAccent,
                            child: const Text('Show Menu'),
                          ),
                        ),
                      )))),
          Positioned(
              top: view3Top,
              left: view3Left,
              bottom: -210,
              right: view3Right,
              child: Transform.rotate(
                  angle: view3Angel,
                  child: Transform.scale(
                      scale: view3Scale,
                      child: AnimatedContainer(
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(circles),
                        ),
                        duration: Duration(seconds: 1),
                        child: Center(
                          child: MaterialButton(
                            onPressed: () {
                              setState(() {
                                viewScale = 0.8;
                                viewRight =
                                    -MediaQuery.of(context).size.width / 1.8;
                                viewTop = 84;
                                viewLeft =
                                    MediaQuery.of(context).size.width / 1.4;
                                viewAngel = -0.3;

                                view2Scale = 0.8;
                                view2Right =
                                    -MediaQuery.of(context).size.width / 1.4;
                                view2Top = 24;
                                view2Left =
                                    MediaQuery.of(context).size.width / 1.3;
                                view2Angel = -0.2;

                                view3Scale = 0.8;
                                view3Right =
                                    -MediaQuery.of(context).size.width / 1.5;
                                view3Top = 0;
                                view3Left =
                                    MediaQuery.of(context).size.width / 1.2;
                                view3Angel = -0.1;
                                circles = 48.0;
                              });
                            },
                            color: Colors.tealAccent,
                            child: const Text('Show Menu'),
                          ),
                        ),
                      ))))
        ],
      ),
    );
  }
}
