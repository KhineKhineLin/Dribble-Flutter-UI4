import 'package:flutter/material.dart';

class ShopDetailPage extends StatefulWidget {
  const ShopDetailPage({Key? key}) : super(key: key);

  @override
  State<ShopDetailPage> createState() => _ShopDetailPageState();
}

class _ShopDetailPageState extends State<ShopDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              left: 0,
              top: 0,
              right: 0,
              child: Hero(
                tag: 'home',
                child: Container(
                  height: MediaQuery.of(context).size.height / 2,
                  decoration: BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(32),
                          bottomRight: Radius.circular(32)),
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://cdn.pixabay.com/photo/2015/01/15/13/06/woman-600238_960_720.jpg'),
                          fit: BoxFit.cover)),
                  child: SafeArea(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            height: 48,
                            width: double.infinity,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                    onPressed: () => Navigator.pop(context),
                                    icon: Icon(
                                      Icons.arrow_back,
                                      color: Colors.white,
                                    )),
                                Text(
                                  'SIXTH COLLECTIONS',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.file_upload,
                                      color: Colors.white,
                                    ))
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )),
          Positioned(
              top: 240,
              left: 16,
              right: 0,
              child: Container(
                height: 240,
                decoration: BoxDecoration(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        flex: 1,
                        child: Text(
                          'LOOKS',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        )),
                    Expanded(
                        flex: 10,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.only(right: 16),
                                width: 120,
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(16),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            'https://cdn.pixabay.com/photo/2019/06/07/10/56/girl-4258001_960_720.jpg'),
                                        fit: BoxFit.cover)),
                              );
                            }))
                  ],
                ),
              ))
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
