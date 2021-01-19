import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<Widget> _bodyWidgets = [];
  final List<String> _widgetTitles = ['News', 'Gallery', 'Check', 'Contacts'];

  int _currentView;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _bodyWidgets.elementAt(_currentView),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: _widgetTitles[0],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.panorama_rounded),
            label: _widgetTitles[1],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check_box),
            label: _widgetTitles[2],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contacts),
            label: _widgetTitles[3],
          ),
        ],
      ),
    );
  }
}
