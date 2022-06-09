import 'package:flutter/material.dart';
import 'package:flutter_circular_text/circular_text/model.dart';
import 'package:flutter_circular_text/circular_text/widget.dart';

class Model extends StatelessWidget {
  const Model({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Color(0xffEAE0DF)),
      debugShowCheckedModeBanner: false,
      home: ModelMainPage(),
    );
  }
}

class ModelMainPage extends StatefulWidget {
  const ModelMainPage({Key? key}) : super(key: key);

  @override
  State<ModelMainPage> createState() => _ModelMainPageState();
}

class _ModelMainPageState extends State<ModelMainPage>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      width: 64,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 24,
                            height: 2,
                            color: Color(0xff643635),
                          ),
                          Container(
                            width: 24,
                            height: 2,
                            color: Color(0xff643635),
                          )
                        ],
                      ),
                    ),
                    Text(
                      'MODELS',
                      style: TextStyle(color: Color(0xff643635), fontSize: 20),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.search),
                      color: Color(0xff643635),
                    )
                  ],
                )),
            Expanded(
                flex: 20,
                child: PageView(
                  children: [
                    Stack(
                      children: [
                        Positioned(
                            right: 0,
                            top: 100,
                            bottom: 100,
                            child: Container(
                              width: 130,
                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  border: Border(
                                      top: BorderSide(
                                          color: Colors.white, width: 24),
                                      left: BorderSide(
                                          color: Colors.white, width: 24),
                                      bottom: BorderSide(
                                          color: Colors.white, width: 24)),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://cdn.pixabay.com/photo/2015/01/06/16/14/woman-590490_960_720.jpg'),
                                      fit: BoxFit.none)),
                            ))
                      ],
                    ),
                    Stack(
                      children: [
                        Positioned(
                            right: 0,
                            top: 40,
                            bottom: 200,
                            child: Container(
                              width: MediaQuery.of(context).size.width / 2 + 32,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://cdn.pixabay.com/photo/2018/01/06/09/25/hijab-3064633_960_720.jpg'),
                                      fit: BoxFit.cover)),
                            )),
                        Positioned(
                            left: 0,
                            top: 100,
                            bottom: 100,
                            child: Container(
                              width: 230,
                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  border: Border(
                                      top: BorderSide(
                                          color: Colors.white, width: 24),
                                      right: BorderSide(
                                          color: Colors.white, width: 24),
                                      bottom: BorderSide(
                                          color: Colors.white, width: 24)),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://cdn.pixabay.com/photo/2015/01/06/16/14/woman-590490_960_720.jpg'),
                                      fit: BoxFit.cover)),
                            )),
                        Positioned(
                            left: 16,
                            top: 24,
                            child: Container(
                              height: 120,
                              width: 120,
                              child: Center(
                                child: Text(
                                  '17',
                                  style: TextStyle(
                                      fontSize: 38,
                                      color: Color(0xff643635),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )),
                        Positioned(
                            left: 16,
                            top: 24,
                            child: Container(
                              height: 120,
                              width: 120,
                              child: CircularText(children: [
                                TextItem(
                                    text: Text(
                                      'TOP MODEL',
                                      style: TextStyle(
                                          fontSize: 32,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff643635)),
                                    ),
                                    startAngle: 120),
                                TextItem(
                                    text: Text(
                                      'TOP MODEL',
                                      style: TextStyle(
                                          fontSize: 32,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff643635)),
                                    ),
                                    startAngle: -120),
                                TextItem(
                                    text: Text(
                                      '+'.toUpperCase(),
                                      style: TextStyle(
                                          fontSize: 32,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff643635)),
                                    ),
                                    startAngle: -20),
                                TextItem(
                                    text: Text(
                                      '+'.toUpperCase(),
                                      style: TextStyle(
                                          fontSize: 32,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff643635)),
                                    ),
                                    startAngle: 100),
                                TextItem(
                                    text: Text(
                                      'TOP MODEL',
                                      style: TextStyle(
                                          fontSize: 32,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff643635)),
                                    ),
                                    startAngle: 0),
                                TextItem(
                                    text: Text(
                                      '+'.toUpperCase(),
                                      style: TextStyle(
                                          fontSize: 32,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff643635)),
                                    ),
                                    startAngle: 220)
                              ]),
                            )),
                      ],
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
