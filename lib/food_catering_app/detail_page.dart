import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: 0,
              child: Hero(
                tag: 'food_01',
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://cdn.pixabay.com/photo/2016/12/06/18/27/tomatoes-1887240_960_720.jpg'),
                          fit: BoxFit.cover)),
                ),
              )),
          Positioned(
              left: 16,
              top: 24,
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              )),
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                height: MediaQuery.of(context).size.height / 2 - 60,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(32),
                        topLeft: Radius.circular(32))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Cezarre Original',
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 120.0, top: 16),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 16,
                          ),
                          Text(
                            '4.9',
                            style: TextStyle(fontSize: 16),
                          ),
                          Spacer(),
                          Icon(
                            Icons.timer,
                            color: Colors.grey,
                            size: 16,
                          ),
                          Text(
                            '15 mins',
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                          Spacer(),
                          Icon(
                            Icons.info_outline,
                            color: Colors.grey,
                            size: 16,
                          ),
                          Text(
                            'Cheese',
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 32.0, top: 8, bottom: 8),
                      child: Text(
                        'cheesy mayo sauce and mozzrella, tomatoes, green pepper, onion'
                        'cheesy mayo sauce and mozzrella, tomatoes, green pepper, onion'
                        'cheesy mayo sauce and mozzrella, tomatoes, green pepper, onion',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ),
                    Container(
                      height: 31,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.monetization_on,
                            color: Colors.grey,
                            size: 24,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            '123.00',
                            style: TextStyle(fontSize: 24),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: VerticalDivider(
                              width: 24,
                              thickness: 2,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            '230g',
                            style: TextStyle(fontSize: 20),
                          ),
                          Spacer(),
                          Container(
                            width: 120,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(6)),
                            child: Center(
                              child: Text(
                                'Add to cart',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      height: 30,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.monetization_on,
                            color: Colors.grey,
                            size: 24,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            '173.00',
                            style: TextStyle(fontSize: 24),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: VerticalDivider(
                              width: 24,
                              thickness: 2,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            '321g',
                            style: TextStyle(fontSize: 20),
                          ),
                          Spacer(),
                          Container(
                            width: 120,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(6)),
                            child: Center(
                              child: Text(
                                'Add to cart',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          )
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
