import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quote_app_using_getx_flutter/controller/quote_controller.dart';
import 'package:quote_app_using_getx_flutter/screens/quote_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => QuotesController());
    return GetMaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: QuoteScreen(),
    );
  }
}
