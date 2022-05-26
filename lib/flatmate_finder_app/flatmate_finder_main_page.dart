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
              height: 58,
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
