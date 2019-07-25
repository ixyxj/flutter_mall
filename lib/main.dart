///首页

import 'package:flutter/material.dart';
import 'styles.dart';
import 'ui/home_layout.dart';
import 'ui/shoppingcar_layout.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    HomeLayout(),
    ShoppingCarLayout(),
    Text(
      'Index 2: School',
    ),
  ];

  //titles
  static const List<Widget> _widgetTitles = <Widget>[
    Text(
      '推荐',
      style: title18,
    ),
    Text(
      '购物车',
      style: title18,
    ),
    Text(
      '个人中心',
      style: title18,
    ),
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
        title: _widgetTitles[_selectedIndex],
        actions: <Widget>[
          IconButton(icon: const Icon(Icons.search), onPressed: (){
            //to search screen
          }, tooltip: 'search',),
          IconButton(icon: const Icon(Icons.add_circle_outline), onPressed: () {

          }, tooltip: 'choice actions',)
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('推荐'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text('购物车'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('个人中心'),
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green[800],
        onTap: _onItemTapped,
      ),
    );
  }
}