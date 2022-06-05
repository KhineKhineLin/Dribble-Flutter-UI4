import 'package:dribbble_flutter_ui4/japan_tour_app/doko_main_page.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent  
  ));
  runApp(const Doko());
}
