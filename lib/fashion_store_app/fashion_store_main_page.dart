import 'package:dribbble_flutter_ui4/fashion_store_app/first_page.dart';
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
          FirstPage(),
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
