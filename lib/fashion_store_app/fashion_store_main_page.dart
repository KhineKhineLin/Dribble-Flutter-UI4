import 'package:flutter/material.dart';

class FashionStore extends StatelessWidget {
  const FashionStore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FashionStoreMainPage(),
    );
  }
}

class FashionStoreMainPage extends StatefulWidget {
  const FashionStoreMainPage({Key? key}) : super(key: key);

  @override
  State<FashionStoreMainPage> createState() => _FashionStoreMainPageState();
}

class _FashionStoreMainPageState extends State<FashionStoreMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Expanded(
                    flex: 3,
                    child: Column(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Center(
                              child: Text(
                                'FEAR OF GOD',
                                style: TextStyle(
                                    fontSize: 32, fontWeight: FontWeight.bold),
                              ),
                            )),
                        Expanded(
                            flex: 1,
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 16),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(24),
                                border: Border.all(color: Colors.grey.shade300),
                              ),
                              padding: EdgeInsets.only(left: 8),
                              child: TextField(
                                decoration: InputDecoration(
                                    icon: Icon(Icons.search),
                                    border: InputBorder.none,
                                    hintText: 'Search'),
                              ),
                            ))
                      ],
                    )),
                Expanded(flex: 5, child: Placeholder()),
                Expanded(flex: 5, child: Placeholder())
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(color: Colors.green),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 84,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24), topRight: Radius.circular(24))),
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'FG',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
              IconButton(onPressed: () {}, icon: Icon(Icons.card_travel)),
              IconButton(onPressed: () {}, icon: Icon(Icons.person_outline))
            ],
          ),
        ),
      ),
    );
  }
}
