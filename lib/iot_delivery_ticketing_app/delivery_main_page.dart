import 'package:flutter/material.dart';

class DeliveryMainPage extends StatefulWidget {
  const DeliveryMainPage({Key? key}) : super(key: key);

  @override
  State<DeliveryMainPage> createState() => _DeliveryMainPageState();
}

class _DeliveryMainPageState extends State<DeliveryMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey[50],
        body: Column(children: [
          SafeArea(
            child: Container(
                height: 200,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Color(0xff0E2F41),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Track',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 36),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Icon(
                            Icons.inbox,
                            color: Colors.orange[100],
                            size: 42,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        'Enter a tracking number to start',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      Text(
                        'tracking your package',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Container(
                          height: 48,
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Tracking Number',
                                  icon: Icon(Icons.search))))
                    ])),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 1.48,
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  height: 120,
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        margin: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(4)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.format_list_bulleted,
                              color: Colors.white,
                              size: 18,
                            ),
                            Text(
                              'ORDERED',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              '1',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 32,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      )),
                      Expanded(
                          child: Container(
                        margin: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            color: Colors.blue[200],
                            borderRadius: BorderRadius.circular(4)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.format_list_bulleted,
                              color: Colors.white,
                              size: 18,
                            ),
                            Text(
                              'SHIPPED',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              '1',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 32,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      )),
                      Expanded(
                          child: Container(
                        margin: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            color: Colors.blueGrey[300],
                            borderRadius: BorderRadius.circular(4)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.format_list_bulleted,
                              color: Colors.white,
                              size: 16,
                            ),
                            Text(
                              'OUT FOR DELIVERY',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              '2',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 26,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      )),
                      Expanded(
                          child: Container(
                        margin: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            color: Color(0xff0e2f41),
                            borderRadius: BorderRadius.circular(4)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.format_list_bulleted,
                              size: 18,
                              color: Colors.white,
                            ),
                            Text(
                              'DELIVERED',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              '3',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 32,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ))
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 2.5,
                  margin: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.blue[300],
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(16),
                                    bottomLeft: Radius.circular(16))),
                          )),
                      Expanded(
                          flex: 20,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Bookshelf',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 19),
                                ),
                                Text(
                                  'Arriving Today',
                                  style: TextStyle(fontSize: 10),
                                ),
                                Divider(),
                                Container(
                                  height: 68,
                                  child: Row(
                                    children: [
                                      Expanded(
                                          flex: 2,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.blue[200],
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                            child: Center(
                                                child: Icon(
                                              Icons.directions_boat,
                                              color: Colors.white,
                                            )),
                                          )),
                                      Expanded(
                                          flex: 7,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                    child: Text(
                                                        'OUT FOR DELIVERY')),
                                                Expanded(
                                                    child: Row(
                                                  children: [
                                                    Container(
                                                      height: 12,
                                                      width: 12,
                                                      decoration: BoxDecoration(
                                                          color: Colors.blue,
                                                          shape:
                                                              BoxShape.circle),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              4.0),
                                                      child: Container(
                                                        height: 1,
                                                        width: 28,
                                                        color: Colors.blue,
                                                      ),
                                                    ),
                                                    Container(
                                                      height: 18,
                                                      width: 18,
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                            color: Colors.blue,
                                                          ),
                                                          shape:
                                                              BoxShape.circle),
                                                      padding:
                                                          EdgeInsets.all(3),
                                                      child: Container(
                                                        height: 12,
                                                        width: 12,
                                                        decoration:
                                                            BoxDecoration(
                                                                color:
                                                                    Colors.blue,
                                                                shape: BoxShape
                                                                    .circle),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.all(4),
                                                      child: Container(
                                                        height: 1,
                                                        width: 28,
                                                        color: Colors.blue,
                                                      ),
                                                    ),
                                                    Container(
                                                      height: 12,
                                                      width: 12,
                                                      decoration: BoxDecoration(
                                                          color: Colors.grey,
                                                          shape:
                                                              BoxShape.circle),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.all(4),
                                                      child: Container(
                                                        height: 1,
                                                        width: 28,
                                                        color: Colors.blue,
                                                      ),
                                                    ),
                                                    Container(
                                                      height: 12,
                                                      width: 12,
                                                      decoration: BoxDecoration(
                                                          color: Colors.grey,
                                                          shape:
                                                              BoxShape.circle),
                                                    )
                                                  ],
                                                ))
                                              ],
                                            ),
                                          ))
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.add_location,
                                      size: 20,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('Rockville, MD 20850'),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.calendar_today,
                                      size: 20,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('May 17, 2022'),
                                    ),
                                    SizedBox(
                                      width: 12,
                                    ),
                                    Icon(
                                      Icons.timer,
                                      size: 20,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('10:10am'),
                                    )
                                  ],
                                ),
                                Divider(
                                  height: 8,
                                ),
                                Spacer(),
                                Row(
                                  children: [
                                    Spacer(),
                                    Text(
                                      'Track Package',
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(
                                        Icons.arrow_forward,
                                        size: 10,
                                      ),
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
                  height: MediaQuery.of(context).size.height / 3,
                  margin: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                )
              ],
            ),
          )
        ]));
  }
//       CustomScrollView(
//         slivers: [
//           SliverAppBar(
//             backgroundColor: Color(0xff0e2f41),
//             expandedHeight: 200,
//             flexibleSpace: FlexibleSpaceBar(
//               background: SafeArea(
//                 child: Container(
//                   height: 200,
//                   padding: EdgeInsets.all(16),
//                   decoration: BoxDecoration(
//                     color: Color(0xff0E2F41),
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Row(
//                         children: [
//                           Text(
//                             'Track',
//                             style: TextStyle(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 36),
//                           ),
//                           SizedBox(
//                             width: 16,
//                           ),
//                           Icon(
//                             Icons.inbox,
//                             color: Colors.orange[100],
//                             size: 42,
//                           )
//                         ],
//                       ),
//                       SizedBox(
//                         height: 7,
//                       ),
//                       Text(
//                         'Enter a tracking number to start',
//                         style: TextStyle(fontSize: 18, color: Colors.white),
//                       ),
//                       Text(
//                         'tracking your package',
//                         style: TextStyle(fontSize: 18, color: Colors.white),
//                       ),
//                       SizedBox(
//                         height: 1,
//                       ),
//                       Container(
//                         height: 48,
//                         padding: EdgeInsets.symmetric(horizontal: 12),
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(4),
//                         ),
//                         child: TextField(
//                           decoration: InputDecoration(
//                               border: InputBorder.none,
//                               hintText: 'Tracking Number',
//                               icon: Icon(Icons.search)),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             floating: false,
//             pinned: true,
//             snap: false,
//             actions: [
//               IconButton(
//                 onPressed: () {},
//                 icon: Icon(Icons.add_circle),
//                 tooltip: 'Add new entry',
//               )
//             ],
//           ),
//           Container(
//             height: MediaQuery.of(context).size.height/2,
//             child: Placeholder(),
//           ),
//           Container(
//             height: MediaQuery.of(context).size.height/2,
//             child: Placeholder(),
//           )
//           // SliverList(
//           //     delegate: SliverChildBuilderDelegate((context, index) {
//           //   return ListTile(
//           //     title: Text('Hello $index'),
//           //   );
//           // }, childCount: 30))
//         ],
//       ),
//     );
//   }
// }
}
