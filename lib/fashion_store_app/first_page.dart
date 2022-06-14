import 'package:dribbble_flutter_ui4/fashion_store_app/detail_page.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                        margin:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 16),
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
          Expanded(
              flex: 5,
              child: Hero(
                tag: 'home',
                child: GestureDetector(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (_) => ShopDetailPage())),
                  child: Container(
                    margin: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        color: Colors.brown,
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://cdn.pixabay.com/photo/2015/01/15/13/06/woman-600238_960_720.jpg'),
                            fit: BoxFit.cover)),
                  ),
                ),
              )),
          Expanded(
              flex: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Text(
                          'OUTERWEAR',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      )),
                  Expanded(
                      flex: 5,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: ListView.builder(
                            itemCount: 10,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.only(right: 16),
                                width: 180,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                        flex: 4,
                                        child: Container(
                                          margin: EdgeInsets.only(left: 16),
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: NetworkImage(
                                                      'https://cdn.pixabay.com/photo/2017/09/19/19/16/angry-2766265_960_720.jpg'),
                                                  fit: BoxFit.cover)),
                                        )),
                                    Expanded(
                                        flex: 1,
                                        child: Text(
                                          'NYLON FULL ZIP HOODIE',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        )),
                                    Expanded(
                                        flex: 1,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 8.0),
                                          child: Text('\$1,180.00'),
                                        ))
                                  ],
                                ),
                              );
                            }),
                      ))
                ],
              ))
        ],
      ),
    );
  }
}
