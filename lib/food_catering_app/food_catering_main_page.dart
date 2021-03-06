import 'package:dribbble_flutter_ui4/food_catering_app/home_page.dart';
import 'package:flutter/material.dart';

class FoodCatering extends StatelessWidget {
  const FoodCatering({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              left: 0,
              right: 0,
              top: 0,
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://cdn.pixabay.com/photo/2015/05/31/12/58/spinach-791629_960_720.jpg'),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.3), BlendMode.darken))),
              )),
          Positioned(
              left: 16,
              right: 16,
              bottom: 24,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Food App Concept',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Welcome',
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 48),
                    child: Text(
                      'Login to your account to choose the city for beeing served without login',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 42,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4)),
                    padding: EdgeInsets.all(8),
                    // child: DropdownButton(
                    //   hint: Text('Please choose your town'),
                    //   isExpanded: true,
                    //   onChanged: (value) {},
                    //   items: [
                    //     DropdownMenuItem(child: Text('Yangon, Myanmar')),
                    //     DropdownMenuItem(child: Text('Dawei, Myanmar')),
                    //     DropdownMenuItem(child: Text('Taungyi, Myanmar'))
                    //   ],
                    // ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Yangon, Myanmar'),
                        Icon(Icons.arrow_drop_down)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => FoodCateringHomePage()));
                    },
                    child: Container(
                      height: 42,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(4)),
                      child: Center(
                        child: Text(
                          'Login to account',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
