import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.only(left: 16),
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Looks',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 3,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      width: MediaQuery.of(context).size.width / 2.8,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(16),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://cdn.pixabay.com/photo/2015/12/01/11/41/girls-1072024_960_720.jpg'),
                              fit: BoxFit.cover)),
                      margin: EdgeInsets.only(right: 16),
                    );
                  }),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'FOOTWEAR',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 3.5,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      width: MediaQuery.of(context).size.width / 2.5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16)),
                      margin: EdgeInsets.only(right: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                              flex: 4,
                              child: Container(
                                margin: EdgeInsets.only(bottom: 4),
                                decoration: BoxDecoration(color: Colors.red),
                              )),
                          Expanded(
                              flex: 2,
                              child: Text(
                                'BLACK SKATE\nMID SNEAKER',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )),
                          Expanded(flex: 1, child: Text('\$633.00'))
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
