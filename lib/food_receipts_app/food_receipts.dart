import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class FoodReceipts extends StatelessWidget {
  const FoodReceipts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FoodReceiptsMainPage(),
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
                  decoration: BoxDecoration(color: Colors.yellow),
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
                                      Expanded(child: Placeholder()),
                                      Expanded(child: Placeholder())
                                    ],
                                  )),
                              Expanded(flex: 2, child: Placeholder())
                            ],
                          )),
                      Expanded(
                          flex: 1,
                          child: Row(
                            children: [
                              Expanded(child: Placeholder()),
                              Expanded(child: Placeholder()),
                              Expanded(child: Placeholder())
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
