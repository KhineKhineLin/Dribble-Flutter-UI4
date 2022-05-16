import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DeliveryMainPage extends StatefulWidget {
  const DeliveryMainPage({Key? key}) : super(key: key);

  @override
  State<DeliveryMainPage> createState() => _DeliveryMainPageState();
}

class _DeliveryMainPageState extends State<DeliveryMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.indigoAccent,
            //title: Text('Silver AppBar'),
            expandedHeight: 200,
            // flexibleSpace: FlexibleSpaceBar(
            //   title: Text('Hello'),
            //   centerTitle: true,
            // ),
            flexibleSpace: FlexibleSpaceBar(
              background: SafeArea(
                child: Container(
                  height: 200,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.indigoAccent,
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
                              icon: Icon(Icons.search)),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            floating: false,
            pinned: true,
            snap: false,
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add_circle),
                tooltip: 'Add new entry',
              )
            ],
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
            return ListTile(
              title: Text('Hello $index'),
            );
          }, childCount: 30))
        ],
      ),
    );
  }
}
