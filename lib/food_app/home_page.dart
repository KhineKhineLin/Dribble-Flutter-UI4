import 'package:flutter/material.dart';

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
        child: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SafeArea(
                top: true,
                left: true,
                right: true,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 32,
                      width: 32,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8)),
                      child: Center(
                        child: Icon(Icons.menu),
                      ),
                    ),
                    Text(
                      'HomeChef',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                        padding: EdgeInsets.all(0),
                        onPressed: () {},
                        icon: Icon(Icons.search))
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hi Mike',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Good afternoon',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 28),
                  )
                ],
              ),
              SizedBox(
                height: 32,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Suggestion for you now',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 4.5,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 7, bottom: 3, right: 8),
                          width: MediaQuery.of(context).size.width / 2.3,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(.1),
                                    spreadRadius: 2,
                                    blurRadius: 3)
                              ],
                              borderRadius: BorderRadius.circular(8)),
                          child: Column(
                            children: [
                              Expanded(
                                  flex: 6,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                'https://cdn.pixabay.com/photo/2016/10/27/22/12/cakes-1776661_960_720.jpg'),
                                            fit: BoxFit.cover),
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(8),
                                            topRight: Radius.circular(8))),
                                  )),
                              Expanded(
                                  flex: 4,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 16, right: 9, top: 1, bottom: 0),
                                    child: Row(
                                      children: [
                                        Align(
                                          alignment: Alignment.topCenter,
                                          child: CircleAvatar(
                                            radius: 16,
                                            backgroundImage: NetworkImage(
                                                'https://cdn.pixabay.com/photo/2019/02/11/20/20/woman-3990680_960_720.jpg'),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Chicken pasta',
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  'by',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(
                                                  'Jack Mike',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.green),
                                                )
                                              ],
                                            ),
                                            Text(
                                              '3k recommended',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ))
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 7, bottom: 3, right: 8),
                          width: MediaQuery.of(context).size.width / 2.3,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(.1),
                                    spreadRadius: 2,
                                    blurRadius: 3)
                              ],
                              borderRadius: BorderRadius.circular(8)),
                          child: Column(
                            children: [
                              Expanded(
                                  flex: 6,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                'https://cdn.pixabay.com/photo/2017/01/11/11/33/cake-1971556_960_720.jpg'),
                                            fit: BoxFit.cover),
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(8),
                                            topRight: Radius.circular(8))),
                                  )),
                              Expanded(
                                  flex: 4,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 16, right: 9, top: 1, bottom: 0),
                                    child: Row(
                                      children: [
                                        Align(
                                          alignment: Alignment.topCenter,
                                          child: CircleAvatar(
                                            radius: 16,
                                            backgroundImage: NetworkImage(
                                                'https://cdn.pixabay.com/photo/2017/02/24/07/45/woman-2094172_960_720.jpg'),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Chicken pasta',
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  'by',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(
                                                  'Jack Mike',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.green),
                                                )
                                              ],
                                            ),
                                            Text(
                                              '3k recommended',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ))
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 7, bottom: 3, right: 8),
                          width: MediaQuery.of(context).size.width / 2.3,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(.1),
                                    spreadRadius: 2,
                                    blurRadius: 3)
                              ],
                              borderRadius: BorderRadius.circular(8)),
                          child: Column(
                            children: [
                              Expanded(
                                  flex: 6,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                'https://cdn.pixabay.com/photo/2017/01/11/11/33/cake-1971552_960_720.jpg'),
                                            fit: BoxFit.cover),
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(8),
                                            topRight: Radius.circular(8))),
                                  )),
                              Expanded(
                                  flex: 4,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 16, right: 9, top: 1, bottom: 0),
                                    child: Row(
                                      children: [
                                        Align(
                                          alignment: Alignment.topCenter,
                                          child: CircleAvatar(
                                            radius: 16,
                                            backgroundImage: NetworkImage(
                                                'https://cdn.pixabay.com/photo/2017/12/22/14/42/girl-3033718_960_720.jpg'),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Chicken pasta',
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  'by',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(
                                                  'Jack Mike',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.green),
                                                )
                                              ],
                                            ),
                                            Text(
                                              '3k recommended',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ))
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Top 10 home chef of this month',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 12),
                    padding: EdgeInsets.only(left: 16),
                    height: MediaQuery.of(context).size.height / 4.5,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomLeft: Radius.circular(12))),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 16),
                          width: MediaQuery.of(context).size.width / 3.5,
                          decoration: BoxDecoration(
                              //color: Colors.red
                              ),
                          padding: EdgeInsets.only(bottom: 6, top: 6),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                radius: 42,
                                backgroundImage: NetworkImage(
                                    'https://cdn.pixabay.com/photo/2018/01/29/17/01/woman-3116587_960_720.jpg'),
                              ),
                              Text(
                                'Rose Rain',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '872 Sold',
                                style: TextStyle(color: Colors.grey),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.orangeAccent,
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 18,
                                    color: Colors.orangeAccent,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 18,
                                    color: Colors.orangeAccent,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 18,
                                    color: Colors.orangeAccent,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 18,
                                    color: Colors.orangeAccent,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 16),
                          width: MediaQuery.of(context).size.width / 3.5,
                          padding: EdgeInsets.only(top: 6, bottom: 6),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                radius: 42,
                                backgroundImage: NetworkImage(
                                    'https://cdn.pixabay.com/photo/2016/11/29/03/36/woman-1867093_960_720.jpg'),
                              ),
                              Text(
                                'Khine Lin',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '871 Sold',
                                style: TextStyle(color: Colors.grey),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.orangeAccent,
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orangeAccent,
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orangeAccent,
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orangeAccent,
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orangeAccent,
                                    size: 18,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 16),
                          width: MediaQuery.of(context).size.width / 3.5,
                          padding: EdgeInsets.only(top: 6, bottom: 6),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                radius: 42,
                                backgroundImage: NetworkImage(
                                    'https://cdn.pixabay.com/photo/2015/06/12/21/58/child-807547_960_720.jpg'),
                              ),
                              Text(
                                'Khine Lin',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '870 Sold',
                                style: TextStyle(color: Colors.grey),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.orangeAccent,
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orangeAccent,
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orangeAccent,
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orangeAccent,
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orangeAccent,
                                    size: 18,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 16),
                          width: MediaQuery.of(context).size.width / 3.5,
                          padding: EdgeInsets.only(top: 6, bottom: 6),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                radius: 42,
                                backgroundImage: NetworkImage(
                                    'https://cdn.pixabay.com/photo/2016/03/11/17/31/girl-1250679_960_720.jpg'),
                              ),
                              Text(
                                'Khine Lin',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '869 Sold',
                                style: TextStyle(color: Colors.grey),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.orangeAccent,
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orangeAccent,
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orangeAccent,
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orangeAccent,
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orangeAccent,
                                    size: 18,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 16),
                          width: MediaQuery.of(context).size.width / 3.5,
                          padding: EdgeInsets.only(top: 6, bottom: 6),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                radius: 42,
                                backgroundImage: NetworkImage(
                                    'https://cdn.pixabay.com/photo/2015/09/09/06/57/child-931152_960_720.jpg'),
                              ),
                              Text(
                                'Khine Lin',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '868 Sold',
                                style: TextStyle(color: Colors.grey),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.orangeAccent,
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orangeAccent,
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orangeAccent,
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orangeAccent,
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orangeAccent,
                                    size: 18,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 16),
                          width: MediaQuery.of(context).size.width / 3.5,
                          padding: EdgeInsets.only(top: 6, bottom: 6),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                radius: 42,
                                backgroundImage: NetworkImage(
                                    'https://cdn.pixabay.com/photo/2019/06/02/17/33/woman-4246954_960_720.jpg'),
                              ),
                              Text(
                                'Khine Lin',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '123 Sold',
                                style: TextStyle(color: Colors.grey),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.orangeAccent,
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orangeAccent,
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orangeAccent,
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orangeAccent,
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orangeAccent,
                                    size: 18,
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 32,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Top Food Reviews',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 16, right: 16, bottom: 16),
                    height: MediaQuery.of(context).size.height / 7,
                    padding: EdgeInsets.only(top: 16, bottom: 16),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 3,
                            child: CircleAvatar(
                              radius: 32,
                              backgroundImage: NetworkImage(
                                  'https://cdn.pixabay.com/photo/2017/05/31/19/58/salad-2361411_960_720.jpg'),
                            )),
                        Expanded(
                            flex: 8,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 16, top: 0, bottom: 1),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Mix Salad'),
                                  Text('30 Review'),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                        size: 20,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                        size: 20,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                        size: 20,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange[100],
                                        size: 20,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange[100],
                                        size: 20,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )),
                        Expanded(
                            flex: 2,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('3k'),
                                Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                )
                              ],
                            ))
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 16, right: 16, bottom: 16),
                    height: MediaQuery.of(context).size.height / 7,
                    padding: EdgeInsets.only(top: 16, bottom: 16),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 3,
                            child: CircleAvatar(
                              radius: 32,
                              backgroundImage: NetworkImage(
                                  'https://cdn.pixabay.com/photo/2017/04/02/23/20/salad-2197151_960_720.jpg'),
                            )),
                        Expanded(
                            flex: 8,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 16, top: 0, bottom: 1),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Mix Salad'),
                                  Text('31 Review'),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                        size: 20,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                        size: 20,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                        size: 20,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange[100],
                                        size: 20,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange[100],
                                        size: 20,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )),
                        Expanded(
                            flex: 2,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('1k'),
                                Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                )
                              ],
                            ))
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 16, right: 16, bottom: 16),
                    height: MediaQuery.of(context).size.height / 7,
                    padding: EdgeInsets.only(top: 16, bottom: 16),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 3,
                            child: CircleAvatar(
                              radius: 32,
                              backgroundImage: NetworkImage(
                                  'https://cdn.pixabay.com/photo/2017/05/30/23/12/salad-2358532_960_720.jpg'),
                            )),
                        Expanded(
                            flex: 8,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 16, top: 0, bottom: 1),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Mix Salad'),
                                  Text('32 Review'),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                        size: 20,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                        size: 20,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                        size: 20,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange[100],
                                        size: 20,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange[100],
                                        size: 20,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )),
                        Expanded(
                            flex: 2,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('2k'),
                                Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                )
                              ],
                            ))
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
