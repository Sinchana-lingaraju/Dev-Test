import 'package:dev_test/activity.dart';
import 'package:dev_test/homepage.dart';
import 'package:dev_test/progress.dart';
import 'package:dev_test/order.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dev-Test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    const List<Widget> _pages = <Widget>[
      homePage(),
      activity(),
      progess(),
      order(),
    ];

    return Scaffold(
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined, color: Colors.black87, size: 40),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_activity_outlined,
                color: Colors.black87, size: 40),
            label: 'Activity',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.trending_up_outlined,
                color: Colors.black87, size: 40),
            label: 'Progress',
          ),
          BottomNavigationBarItem(
            icon:
                Icon(Icons.settings_outlined, color: Colors.black87, size: 40),
            label: 'Settings',
          )
        ],
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
