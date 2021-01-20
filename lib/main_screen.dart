import 'package:doover_test_project/core/consts/colors.dart';
import 'package:doover_test_project/core/widgets/appbar.dart';
import 'package:doover_test_project/features/posts/presentation/widgets/posts_list_view.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<Widget> _bodyWidgets = [
    PostsListView(),
    Offstage(),
    Offstage(),
    Offstage(),
  ];

  final List<String> _widgetTitles = [
    'News',
    'Gallery',
    'Check',
    'Contacts',
  ];

  int _currentView = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(
            MediaQuery.of(context).size.width,
            kToolbarHeight,
          ),
          child: DooverAppBar(
            title: _widgetTitles[_currentView],
            isButtonVisible: false,
          ),
        ),
        body: _bodyWidgets.elementAt(_currentView),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentView,
          selectedItemColor: Colors.white,
          unselectedItemColor: DooverColors.kInactiveCheckboxColor,
          backgroundColor: DooverColors.kBottomNavBarColor,
          onTap: (int index) {
            setState(() {
              _currentView = index;
            });
          },
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
      ),
    );
  }
}
