import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'delivery_main_page.dart';

class IotDeliverTrackingApp extends StatelessWidget {
  const IotDeliverTrackingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DeliveryMainPage() ,
    );
  }
}