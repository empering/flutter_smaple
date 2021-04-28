import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample/binding/app_binding.dart';
import 'package:sample/pages/infinite_scroll_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialBinding: AppBinding(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter!'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => InfiniteScrollView());
                },
                child: Text('Infinite Scroll View'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
