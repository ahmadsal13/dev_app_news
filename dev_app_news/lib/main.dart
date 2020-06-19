import 'package:flutter/material.dart';
import 'package:dev_app_news/info.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}
