import 'package:flutter/material.dart';

import 'detail_page.dart';

class FoodCateringHomePage extends StatefulWidget {
  const FoodCateringHomePage({Key? key}) : super(key: key);

  @override
  State<FoodCateringHomePage> createState() => _FoodCateringHomePageState();
}

class _FoodCateringHomePageState extends State<FoodCateringHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned(
            top: 230,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(color: Colors.blueGrey[50]),
              child: ListView(
                children: [
                  InkWell(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (_) => DetailPage())),
                    child: Container(
                      height: 120,
                      margin: EdgeInsets.only(bottom: 16, left: 16, right: 16),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 3,
                                spreadRadius: 5)
                          ],
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white),
                      child: Row(
                        children: [
                          Expanded(
                              flex: 4,
                              child: Hero(
                                tag: 'food_01',
                                child: Container(
                                  margin: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(8),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              'https://cdn.pixabay.com/photo/2016/12/06/18/27/tomatoes-1887240_960_720.jpg'),
                                          fit: BoxFit.cover)),
                                ),
                              )),
                          Expanded(
                            flex: 8,
                            child: Container(
                              padding: EdgeInsets.only(bottom: 8),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Cezarre Original',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 48),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 14,
                                        ),
                                        Text(
                                          '4.9',
                                          style: TextStyle(fontSize: 12),
                                        ),
                                        Spacer(),
                                        Icon(
                                          Icons.timer,
                                          color: Colors.grey,
                                          size: 14,
                                        ),
                                        Text('15 mins',
                                            style: TextStyle(fontSize: 12)),
                                        Spacer(),
                                        Icon(
                                          Icons.info_outline,
                                          color: Colors.grey,
                                          size: 14,
                                        ),
                                        Text(
                                          'Cheese',
                                          style: TextStyle(fontSize: 12),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 32.0),
                                    child: Text(
                                      'cheesy mayo sauce and mozzarella, tomatoes, green pepper, onion,',
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.grey),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 24.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Icon(
                                          Icons.monetization_on,
                                          color: Colors.grey,
                                          size: 16,
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Text(
                                          '123.00',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                        Spacer(),
                                        Container(
                                          width: 82,
                                          height: 24,
                                          decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          child: Center(
                                            child: Text(
                                              'Add to cart',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 120,
                    margin: EdgeInsets.only(bottom: 16, left: 16, right: 16),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 3,
                              spreadRadius: 5)
                        ],
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 4,
                            child: Container(
                              margin: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(8),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://cdn.pixabay.com/photo/2017/05/11/19/44/fresh-fruits-2305192_960_720.jpg'),
                                      fit: BoxFit.cover)),
                            )),
                        Expanded(
                            flex: 8,
                            child: Container(
                              padding: EdgeInsets.only(bottom: 8),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Cezarre Original',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 48.0),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 14,
                                        ),
                                        Text(
                                          '4.9',
                                          style: TextStyle(fontSize: 12),
                                        ),
                                        Spacer(),
                                        Icon(
                                          Icons.timer,
                                          color: Colors.grey,
                                          size: 14,
                                        ),
                                        Text(
                                          '15 mins',
                                          style: TextStyle(fontSize: 12),
                                        ),
                                        Spacer(),
                                        Icon(
                                          Icons.info_outline,
                                          color: Colors.grey,
                                          size: 14,
                                        ),
                                        Text(
                                          'Cheese',
                                          style: TextStyle(fontSize: 12),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 32.0),
                                    child: Text(
                                      'cheesy mayo sauce and mozzarella, tomatoes, green pepper, onion',
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.grey),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 24.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Icon(
                                          Icons.monetization_on,
                                          color: Colors.grey,
                                          size: 16,
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Text(
                                          '122.00',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                        Spacer(),
                                        Container(
                                          width: 82,
                                          height: 24,
                                          decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          child: Center(
                                            child: Text(
                                              'Add to cart',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10),
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
                  ),
                  Container(
                    height: 120,
                    margin: EdgeInsets.only(bottom: 16, left: 16, right: 16),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 3,
                              spreadRadius: 5),
                        ],
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 4,
                            child: Container(
                              margin: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://cdn.pixabay.com/photo/2020/06/03/08/53/mozzarella-5254110_960_720.jpg'),
                                      fit: BoxFit.cover)),
                            )),
                        Expanded(
                            flex: 8,
                            child: Container(
                              padding: EdgeInsets.only(bottom: 8),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Cezarre Original',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 48),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 14,
                                        ),
                                        Text(
                                          '4.9',
                                          style: TextStyle(fontSize: 12),
                                        ),
                                        Spacer(),
                                        Icon(
                                          Icons.timer,
                                          color: Colors.grey,
                                          size: 14,
                                        ),
                                        Text(
                                          '15 mins',
                                          style: TextStyle(fontSize: 12),
                                        ),
                                        Spacer(),
                                        Icon(
                                          Icons.info_outline,
                                          color: Colors.grey,
                                          size: 14,
                                        ),
                                        Text(
                                          'Cheese',
                                          style: TextStyle(fontSize: 12),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 32.0),
                                    child: Text(
                                      'cheesy mayo sauce and mozzarella, tomatoes, green pepper, onion',
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.grey),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 24.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Icon(
                                          Icons.monetization_on,
                                          color: Colors.grey,
                                          size: 16,
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Text(
                                          '121.00',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                        Spacer(),
                                        Container(
                                          width: 82,
                                          height: 24,
                                          decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          child: Center(
                                            child: Text(
                                              'Add to cart',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10),
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
                  ),
                  Container(
                    height: 120,
                    margin: EdgeInsets.only(bottom: 16, left: 16, right: 16),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 3,
                              spreadRadius: 5)
                        ],
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 4,
                            child: Container(
                              margin: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://cdn.pixabay.com/photo/2021/01/10/04/37/salad-5904093_960_720.jpg'),
                                      fit: BoxFit.cover)),
                            )),
                        Expanded(
                            flex: 8,
                            child: Container(
                              padding: EdgeInsets.only(bottom: 8),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Cezarre Original',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 48.0),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 14,
                                        ),
                                        Text(
                                          '4.9',
                                          style: TextStyle(fontSize: 12),
                                        ),
                                        Spacer(),
                                        Icon(
                                          Icons.timer,
                                          color: Colors.grey,
                                          size: 14,
                                        ),
                                        Text(
                                          '15 mins',
                                          style: TextStyle(fontSize: 12),
                                        ),
                                        Spacer(),
                                        Icon(
                                          Icons.info_outline,
                                          color: Colors.grey,
                                          size: 14,
                                        ),
                                        Text(
                                          'Cheese',
                                          style: TextStyle(fontSize: 12),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 32.0),
                                    child: Text(
                                      'cheesy mayo sauce and mozzarella, tomatoes, green pepper, onion',
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.grey),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 24),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Icon(
                                          Icons.monetization_on,
                                          color: Colors.grey,
                                          size: 16,
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Text(
                                          '120.00',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                        Spacer(),
                                        Container(
                                          width: 82,
                                          height: 24,
                                          decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          child: Center(
                                            child: Text(
                                              'Add to cart',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10),
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
                  ),
                  Container(
                    height: 120,
                    margin: EdgeInsets.only(bottom: 16, left: 16, right: 16),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 3,
                              spreadRadius: 5)
                        ],
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 4,
                            child: Container(
                              margin: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://cdn.pixabay.com/photo/2015/05/31/13/59/salad-791891_960_720.jpg'),
                                      fit: BoxFit.cover)),
                            )),
                        Expanded(
                            flex: 8,
                            child: Container(
                              padding: EdgeInsets.only(bottom: 8),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Cezarre Original',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 48.0),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 14,
                                        ),
                                        Text(
                                          '4.9',
                                          style: TextStyle(fontSize: 12),
                                        ),
                                        Spacer(),
                                        Icon(
                                          Icons.timer,
                                          color: Colors.grey,
                                          size: 14,
                                        ),
                                        Text(
                                          '15 mins',
                                          style: TextStyle(fontSize: 12),
                                        ),
                                        Spacer(),
                                        Icon(
                                          Icons.info_outline,
                                          color: Colors.grey,
                                          size: 14,
                                        ),
                                        Text(
                                          'Cheese',
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 32.0),
                                    child: Text(
                                      'cheesy mayo sauce and mozzarella, tomatoes, green pepper, onions',
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.grey),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 24.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Icon(
                                          Icons.monetization_on,
                                          color: Colors.grey,
                                          size: 16,
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Text(
                                          '119.00',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                        Spacer(),
                                        Container(
                                          width: 82,
                                          height: 24,
                                          decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          child: Center(
                                            child: Text(
                                              'Add to cart',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10),
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
                  )
                ],
              ),
            )),
        Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 60,
              decoration: BoxDecoration(color: Colors.white.withOpacity(0.5)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Icon(Icons.apps), Text('Menu')],
                      )),
                  Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Icon(Icons.add_shopping_cart), Text('Cart')],
                      )),
                  Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Icon(Icons.menu), Text('Orders')],
                      )),
                  Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Icon(Icons.account_circle), Text('Profile')],
                      ))
                ],
              ),
            )),
        Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: Container(
              height: 230,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://cdn.pixabay.com/photo/2018/09/17/15/46/bell-pepper-3684098_960_720.jpg'),
                      fit: BoxFit.cover)),
              padding: EdgeInsets.only(right: 16, bottom: 16),
              child: Stack(
                children: [
                  Positioned(
                      top: 24,
                      left: 16,
                      child: IconButton(
                        icon: Icon(Icons.arrow_back),
                        color: Colors.white,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      )),
                  Positioned(
                    right: 0,
                    bottom: 8,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Salads',
                          style: TextStyle(color: Colors.white, fontSize: 28),
                        ),
                        Text(
                          '48 items',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )),
      ]),
    );
  }
}
