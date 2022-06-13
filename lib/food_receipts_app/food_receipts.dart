import 'package:badges/badges.dart';
import 'package:dribbble_flutter_ui4/food_receipts_app/food_info_page.dart';
import 'package:dribbble_flutter_ui4/food_receipts_app/start_page.dart';
import 'package:flutter/material.dart';

class FoodReceipts extends StatelessWidget {
  const FoodReceipts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartPage(),
    );
  }
}

class FoodReceiptsMainPage extends StatefulWidget {
  const FoodReceiptsMainPage({Key? key}) : super(key: key);

  @override
  State<FoodReceiptsMainPage> createState() => _FoodReceiptsMainPageState();
}

class _FoodReceiptsMainPageState extends State<FoodReceiptsMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 24.0, right: 24, top: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.menu),
                    Badge(
                      badgeColor: Colors.yellow.shade700,
                      child: Container(
                        height: 38,
                        width: 38,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://cdn.pixabay.com/photo/2018/03/03/06/26/girl-3194977_960_720.jpg'),
                                fit: BoxFit.cover)),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 120,
                ),
                Row(
                  children: [
                    Text(
                      'Good ',
                      style: TextStyle(fontSize: 28),
                    ),
                    Text(
                      'evening!',
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  height: 64,
                ),
                Row(
                  children: [
                    Container(
                      height: 38,
                      width: 180,
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(8)),
                      padding: EdgeInsets.only(left: 8, right: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('5 ingredients or less'),
                          Icon(
                            Icons.clear,
                            size: 18,
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.search)
                  ],
                ),
                SizedBox(
                  height: 32,
                ),
                Container(
                  height: 280,
                  decoration: BoxDecoration(),
                  child: Column(
                    children: [
                      Expanded(
                          flex: 2,
                          child: Row(
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Column(
                                    children: [
                                      Expanded(
                                          child: Container(
                                        margin: const EdgeInsets.all(4),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    'https://cdn.pixabay.com/photo/2017/07/16/12/07/beef-2509104_960_720.jpg'),
                                                fit: BoxFit.cover)),
                                      )),
                                      Expanded(
                                          child: Container(
                                        margin: const EdgeInsets.all(4),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    'https://cdn.pixabay.com/photo/2017/01/23/15/36/eat-2002918_960_720.jpg'),
                                                fit: BoxFit.cover)),
                                      ))
                                    ],
                                  )),
                              Expanded(
                                  flex: 2,
                                  child: InkWell(
                                    onTap: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => FoodInfoPage())),
                                    child: Container(
                                      margin: const EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  'https://cdn.pixabay.com/photo/2016/03/05/22/08/beef-1239187_960_720.jpg'),
                                              fit: BoxFit.cover)),
                                    ),
                                  ))
                            ],
                          )),
                      Expanded(
                          flex: 1,
                          child: Row(
                            children: [
                              Expanded(
                                  child: Container(
                                margin: const EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            'https://cdn.pixabay.com/photo/2015/06/30/22/51/steak-826961_960_720.jpg'),
                                        fit: BoxFit.cover)),
                              )),
                              Expanded(
                                  child: Container(
                                margin: const EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            'https://cdn.pixabay.com/photo/2018/09/14/11/12/food-3676796_960_720.jpg'),
                                        fit: BoxFit.cover)),
                              )),
                              Expanded(
                                  child: Container(
                                margin: EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            'https://cdn.pixabay.com/photo/2017/12/04/15/49/salmon-2997240_960_720.jpg'),
                                        fit: BoxFit.cover)),
                              ))
                            ],
                          ))
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
                      'Your special',
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      'recommendations',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: SizedBox(
                        height: 100,
                        child: Container(
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 100,
                              itemBuilder: (context, index) {
                                return Container(
                                  width: 100,
                                  margin: EdgeInsets.only(right: 16),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              'https://cdn.pixabay.com/photo/2016/11/18/14/39/beans-1834984_960_720.jpg'),
                                          fit: BoxFit.cover)),
                                );
                              }),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
