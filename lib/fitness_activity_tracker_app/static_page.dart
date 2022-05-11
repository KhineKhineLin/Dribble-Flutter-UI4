import 'package:fl_chart/fl_chart.dart';
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
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
                    Text(
                      'Statistics',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.keyboard_arrow_down))
                  ],
                ),
              )),
          Padding(
            padding: const EdgeInsets.only(top: 42),
            child: Container(
              padding: EdgeInsets.only(left: 24, top: 48, right: 24),
              height: MediaQuery.of(context).size.height - 134,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(32),
                      topLeft: Radius.circular(32))),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Walk',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Icon(
                        Icons.calendar_today,
                        color: Colors.white,
                        size: 18,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        '10 May, 2022',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 28,
                        width: 70,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.white.withOpacity(0.2)),
                            borderRadius: BorderRadius.circular(24)),
                        child: Center(
                            child: Text(
                          'Day',
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Container(
                        height: 28,
                        width: 70,
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(24)),
                        child: Center(
                          child: Text(
                            'Week',
                            style:
                                TextStyle(color: Colors.white.withOpacity(0.3)),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Container(
                        height: 28,
                        width: 70,
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(24)),
                        child: Center(
                          child: Text(
                            'Month',
                            style:
                                TextStyle(color: Colors.white.withOpacity(0.3)),
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    height: 200,
                    child: Column(
                      children: [
                        Expanded(
                            flex: 4,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '6551',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 48,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 32,
                                ),
                                Text(
                                  'steps',
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.2),
                                      fontSize: 28),
                                )
                              ],
                            )),
                        Expanded(
                            flex: 2,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '5.1',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    ),
                                    Text(
                                      'distance',
                                      style: TextStyle(
                                          color: Colors.white.withOpacity(0.2)),
                                    )
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '450',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    ),
                                    Text(
                                      'kcal',
                                      style: TextStyle(
                                          color: Colors.white.withOpacity(0.2)),
                                    )
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '13.9km/h',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    ),
                                    Text(
                                      'average speed',
                                      style: TextStyle(
                                          color: Colors.white.withOpacity(0.2)),
                                    )
                                  ],
                                )
                              ],
                            ))
                      ],
                    ),
                  ),
                  Container(
                    height: 180,
                    width: MediaQuery.of(context).size.width,
                    child: BarChart(BarChartData(
                        alignment: BarChartAlignment.spaceBetween,
                        maxY: 20,
                        titlesData: FlTitlesData(
                            show: true,
                            bottomTitles: AxisTitles(
                              sideTitles: SideTitles(
                                  showTitles: true,
                                  getTitlesWidget: (double value, _) {
                                    switch (value.toInt()) {
                                      case 0:
                                        return Text(
                                          '14',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12),
                                        );
                                      case 1:
                                        return Text('');
                                      case 2:
                                        return Text(
                                          '16',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12),
                                        );
                                      case 3:
                                        return Text('');
                                      case 4:
                                        return Text(
                                          '18',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12),
                                        );
                                      case 5:
                                        return Text('');
                                      case 6:
                                        return Text(
                                          '20',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12),
                                        );
                                      case 7:
                                        return Text('');
                                      case 8:
                                        return Text(
                                          '22',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12),
                                        );
                                      default:
                                        return Text('');
                                    }
                                  }),
                            ),
                            leftTitles: AxisTitles(
                                sideTitles: SideTitles(showTitles: false))),
                        borderData: FlBorderData(show: false),
                        barGroups: [
                          BarChartGroupData(
                            x: 0,
                            barRods: [
                              BarChartRodData(
                                  toY: 14, color: Colors.orange[400])
                            ],
                          ),
                          BarChartGroupData(x: 1, barRods: [
                            BarChartRodData(toY: 8, color: Colors.orange[400])
                          ]),
                          BarChartGroupData(x: 2, barRods: [
                            BarChartRodData(toY: 8, color: Colors.orange[400])
                          ]),
                          BarChartGroupData(x: 3, barRods: [
                            BarChartRodData(toY: 4, color: Colors.orange[400])
                          ]),
                          BarChartGroupData(x: 4, barRods: [
                            BarChartRodData(toY: 6, color: Colors.orange[400])
                          ]),
                          BarChartGroupData(x: 5, barRods: [
                            BarChartRodData(toY: 18, color: Colors.orange[400])
                          ]),
                          BarChartGroupData(x: 6, barRods: [
                            BarChartRodData(toY: 10, color: Colors.orange[400])
                          ]),
                          BarChartGroupData(x: 7, barRods: [
                            BarChartRodData(toY: 8, color: Colors.orange[400])
                          ]),
                          BarChartGroupData(x: 8, barRods: [
                            BarChartRodData(toY: 10, color: Colors.orange[400])
                          ])
                        ])),
                  ),
                  Spacer(),
                  Container(
                    height: 52,
                    child: Row(
                      children: [
                        Container(
                          height: 60,
                          width: 52,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(16)),
                          child: Center(
                            child: Icon(
                              Icons.favorite_border,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          width: 100,
                          child: Stack(
                            children: [
                              Positioned(
                                  top: 0,
                                  right: 16,
                                  child: Text(
                                    'MIN',
                                    style: TextStyle(color: Colors.white),
                                  )),
                              Positioned(
                                  top: 16,
                                  left: 16,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '64',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 28),
                                      ),
                                      Text(
                                        'bpm',
                                        style: TextStyle(
                                            color:
                                                Colors.white.withOpacity(0.2)),
                                      )
                                    ],
                                  ))
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 24,
                        ),
                        Container(
                          width: 100,
                          child: Stack(
                            children: [
                              Positioned(
                                  top: 0,
                                  right: 16,
                                  child: Text(
                                    'MAX',
                                    style: TextStyle(color: Colors.white),
                                  )),
                              Positioned(
                                  top: 16,
                                  left: 16,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '146',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 28),
                                      ),
                                      Text(
                                        'bpm',
                                        style: TextStyle(
                                            color:
                                                Colors.white.withOpacity(0.2)),
                                      )
                                    ],
                                  ))
                            ],
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
    );
  }
}
