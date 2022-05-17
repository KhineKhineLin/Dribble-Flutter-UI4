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
                      )),
                      Expanded(
                          child: Container(
                        margin: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            color: Colors.blue[100],
                            borderRadius: BorderRadius.circular(4)),
                      )),
                      Expanded(
                          child: Container(
                        margin: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            color: Colors.blueGrey[200],
                            borderRadius: BorderRadius.circular(4)),
                      )),
                      Expanded(
                          child: Container(
                        margin: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            color: Color(0xff0e2f41),
                            borderRadius: BorderRadius.circular(4)),
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
