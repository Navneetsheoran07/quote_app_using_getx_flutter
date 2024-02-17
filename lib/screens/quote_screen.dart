import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quote_app_using_getx_flutter/controller/quote_controller.dart';
import 'package:quote_app_using_getx_flutter/data/model/quotes.dart';

class QuoteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuotesController controller = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Quote of the Day',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(
          8.0,
        ),
        child: GetX<QuotesController>(
            init: controller,
            builder: (value) {
              return ListView.builder(
                  itemCount: value.quotes.length,
                  itemBuilder: (context, index) {
                    Quote currentItem = value.quotes[index];
                    return cardItem(
                        quotes: currentItem.text, author: currentItem.author);
                  });
            }),
      ),
    );
  }
}

Widget cardItem({required String author, required String quotes}) {
  return Card(
    child: Padding(
      padding: const EdgeInsets.all(
        8.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            quotes,
            style: const TextStyle(
              fontSize: 25,
            ),
          ),
          Text(
            author,
            style: const TextStyle(fontSize: 20),
            textAlign: TextAlign.end,
          )
        ],
      ),
    ),
  );
}
