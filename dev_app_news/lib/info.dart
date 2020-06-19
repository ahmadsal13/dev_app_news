import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:dev_app_news/tipsinfo.dart';
import 'package:dev_app_news/videosinfo.dart';
import 'package:dev_app_news/newsinfo.dart';

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30);
 final List<Widget> _widgetOptions = [
    NewsInfo(),
    VideoApp(),
    TipsInfo(),  
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Coding Hub'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            title: Text('News'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_circle_filled),
            title: Text('Video'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lightbulb_outline),
            title: Text('Tips'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}