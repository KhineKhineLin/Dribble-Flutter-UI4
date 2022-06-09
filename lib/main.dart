import 'package:dribbble_flutter_ui4/model_app/model_main_page.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Color(0xffEAE0DF)));
  runApp(const Model());
}
