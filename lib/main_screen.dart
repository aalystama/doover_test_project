import 'package:doover_test_project/core/injection_container.dart';
import 'package:doover_test_project/features/posts/controllers/posts_cubit.dart';
import 'package:doover_test_project/features/posts/presentation/widgets/posts_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<Widget> _bodyWidgets = [
    BlocProvider<PostsCubit>(
      create: (context) => getIt<PostsCubit>(),
      child: PostsListView(),
    ),
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
