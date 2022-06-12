import 'package:flutter/material.dart';

class FoodDelivery extends StatelessWidget {
  const FoodDelivery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FoodDeliveryMainPage(),
    );
  }
}

class FoodDeliveryMainPage extends StatefulWidget {
  const FoodDeliveryMainPage({Key? key}) : super(key: key);

  @override
  State<FoodDeliveryMainPage> createState() => _FoodDeliveryMainPageState();
}

class _FoodDeliveryMainPageState extends State<FoodDeliveryMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SafeArea(
              top: true,
              left: true,
              right: true,
              child: Container(
                height: 64,
                child: Row(
                  children: [
                    Flexible(
                        flex: 9,
                        child: Container(
                          padding: EdgeInsets.only(left: 16, right: 8),
                          margin: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(4)),
                          child: TextField(
                            decoration: InputDecoration(
                                suffixIcon: Icon(Icons.search),
                                border: InputBorder.none,
                                hintText: 'Search',
                                helperStyle: TextStyle(
                                    color: Colors.grey, fontSize: 12)),
                          ),
                        )),
                    Flexible(
                        flex: 2,
                        child: Center(
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.menu),
                          ),
                        ))
                  ],
                ),
              ),
            ),
            Container(
              height: 140,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Top categories',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            Text(
                              'show all',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      )),
                  Expanded(
                      flex: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListView(
                          padding: EdgeInsets.zero,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          children: [
                            Container(
                              width: 84,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 48,
                                    width: 48,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.orange[200]),
                                    child: Center(
                                      child: Image.network(
                                        'https://www.bajafresh.com/assets/mexican-food-menu/tacos/baja-taco/thumb.png',
                                        width: 32,
                                        height: 38,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Mexican',
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.6)),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 84,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 48,
                                    width: 48,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.orange[200]),
                                    child: Center(
                                      child: Image.network(
                                        'https://www.eatuppizza.com/media/3386/pizza_truff.png?width=900',
                                        width: 32,
                                        height: 38,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Pizza',
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.6)),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 84,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 48,
                                    width: 48,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.orange[200]),
                                    child: Center(
                                      child: Image.network(
                                        'https://sc04.alicdn.com/kf/U3c144a36f86b49639c714d9fc9b3e472G.png',
                                        width: 32,
                                        height: 38,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Asian',
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.6)),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 84,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 48,
                                    width: 48,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.orange[200]),
                                    child: Center(
                                      child: Image.network(
                                        'https://www.burgerlounge.com/perch/resources/menuphotos/2020-bl-menu-lounge-white-cheddar.png',
                                        width: 32,
                                        height: 38,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Burgers',
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.6)),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 84,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 48,
                                    width: 48,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.orange[200],
                                    ),
                                    child: Center(
                                      child: Image.network(
                                        'http://tacotimenw.com/wp-content/uploads/2018/10/Classic-Burrito-BEEF.png',
                                        width: 32,
                                        height: 38,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Burrito',
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.6)),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 84,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 48,
                                    width: 48,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.orange[200]),
                                    child: Center(
                                      child: Image.network(
                                        'https://www.summfoods.com/wp-content/uploads/2022/03/Gyoza-plate-Hompage.png',
                                        width: 32,
                                        height: 38,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Dumpling',
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.6)),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 84,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 48,
                                    width: 48,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.orange[200],
                                    ),
                                    child: Center(
                                      child: Image.network(
                                        'http://osushimyanmar.com/wp-content/uploads/2020/03/set_menu_carousel.png',
                                        width: 32,
                                        height: 38,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Sushi',
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.6)),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 84,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 48,
                                    width: 48,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.orange[200]),
                                    child: Center(
                                      child: Image.network(
                                        'https://cdn.pixabay.com/photo/2018/08/10/12/25/mohinga-3596749_1280.png',
                                        width: 32,
                                        height: 38,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Mohinga',
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.6)),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 84,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 48,
                                    width: 48,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.orange[200]),
                                    child: Center(
                                      child: Image.network(
                                        'https://deve.irrawaddyvt.com/wp-content/uploads/2021/11/burmese_food.png',
                                        width: 32,
                                        height: 38,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Salad',
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.6)),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 84,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 48,
                                    width: 48,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.orange[200]),
                                    child: Center(
                                      child: Image.network(
                                        'https://images.squarespace-cdn.com/content/v1/5ab08d4d1aef1d04ff510c72/1607910165531-WLJ8FOXE9SJBFW691GXK/Beef+Bulgogi+Bibimbap.png',
                                        width: 32,
                                        height: 38,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Bibimbap',
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.6)),
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
            Padding(
              padding: const EdgeInsets.only(top: 16.0, left: 8),
              child: Text(
                'Recommended for you',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 460,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 120,
                      margin: EdgeInsets.all(8),
                      child: Placeholder(),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
