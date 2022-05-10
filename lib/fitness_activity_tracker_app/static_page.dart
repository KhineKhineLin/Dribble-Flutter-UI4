import 'package:flutter/material.dart';

class StatisticsPage extends StatefulWidget {
  const StatisticsPage({Key? key}) : super(key: key);

  @override
  State<StatisticsPage> createState() => _StatisticsPageState();
}

class _StatisticsPageState extends State<StatisticsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
              top: true,
              left: true,
              right: true,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
                  Text('Statistics'),
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.keyboard_arrow_down))
                ],
              )),
          Padding(
            padding: const EdgeInsets.only(top: 64),
            child: Container(
              height: MediaQuery.of(context).size.height - 140,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(32),
                      topLeft: Radius.circular(32))),
            ),
          )
        ],
      ),
    );
  }
}
