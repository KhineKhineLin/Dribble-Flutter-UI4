import 'package:flutter/material.dart';

class Traveler extends StatelessWidget {
  const Traveler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 48),
        child: Column(
          children: [
            Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Traveler',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Icon(Icons.search),
                        SizedBox(
                          width: 16,
                        ),
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://cdn.pixabay.com/photo/2017/05/11/08/48/woman-2303361_960_720.jpg'),
                        )
                      ],
                    ),
                    Text(
                      'Finding your traveler experience',
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    )
                  ],
                )),
            Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Row(
                          children: [
                            Text(
                              'Popular',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            Text(
                              'see more',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 234,
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return Container(
                              width: 154,
                              margin:
                                  EdgeInsets.only(right: 16, top: 8, bottom: 8),
                              decoration: BoxDecoration(
                                  color: Colors.teal,
                                  borderRadius: BorderRadius.circular(16),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://cdn.pixabay.com/photo/2018/06/13/18/20/waves-3473335_960_720.jpg'),
                                      colorFilter: ColorFilter.mode(
                                          Colors.black.withOpacity(0.2),
                                          BlendMode.darken),
                                      fit: BoxFit.cover)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 38,
                                          width: 38,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.white),
                                              shape: BoxShape.circle,
                                              image: DecorationImage(
                                                  image: NetworkImage(
                                                      'https://cdn.pixabay.com/photo/2018/01/06/09/25/hijab-3064633_960_720.jpg'),
                                                  fit: BoxFit.cover)),
                                        ),
                                        Spacer(),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 14,
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Text(
                                          '4.8',
                                          style: TextStyle(color: Colors.white),
                                        )
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'Millford Sound,\nNew Zealand',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'Jun 4, 2022',
                                      style: TextStyle(
                                          color: Colors.white.withOpacity(0.6)),
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                          itemCount: 5,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                        ),
                      )
                    ],
                  ),
                )),
            Expanded(flex: 1, child: Placeholder()),
            Expanded(flex: 3, child: Placeholder())
          ],
        ),
      ),
    );
  }
}
