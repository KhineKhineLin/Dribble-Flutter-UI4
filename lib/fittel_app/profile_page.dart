import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          top: true,
          left: true,
          right: true,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 0, right: 24, top: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          print('back button pressed');
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          size: 18,
                        )),
                    Badge(
                      child: Icon(Icons.chat),
                      showBadge: true,
                      badgeContent: Text(
                        '2',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 3.5,
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                          'https://cdn.pixabay.com/photo/2018/01/29/17/01/woman-3116587_960_720.jpg'),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Khinekhinel',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          letterSpacing: 1.5),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Container(
                      height: 35,
                      margin: EdgeInsets.symmetric(
                        horizontal: 8,
                      ),
                      width: MediaQuery.of(context).size.width / 2.4,
                      decoration: BoxDecoration(
                          color: Colors.teal[200],
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.teal.shade100,
                                spreadRadius: 1,
                                blurRadius: 2)
                          ]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Message',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Icon(
                            Icons.chat_bubble_outline,
                            color: Colors.white,
                            size: 18,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 11,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Programs',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                  fontSize: 16),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Flutter',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            )
                          ],
                        )),
                    VerticalDivider(
                      thickness: 1,
                    ),
                    Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Episode',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              '295',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            )
                          ],
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
