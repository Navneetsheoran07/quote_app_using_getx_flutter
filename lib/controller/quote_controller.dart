import 'package:get/get.dart';
import 'package:quote_app_using_getx_flutter/data/model/quotes.dart';
import 'package:quote_app_using_getx_flutter/data/service/service.dart';

class QuotesController extends GetxController {
  @override
  void onInit() {
    getQuotes();
    super.onInit();
  }

  List<Quote> quotes = <Quote>[].obs;
  void getQuotes() async {
    quotes.addAll(await ApiService().getQuotes());
  }
}
