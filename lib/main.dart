import 'package:doover_test_project/core/consts/colors.dart';
import 'package:doover_test_project/core/injection_container.dart';
import 'package:doover_test_project/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  setupInjections();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Raleway',
        scaffoldBackgroundColor: DooverColors.kScaffoldBackgroundColor,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainScreen(),
    );
  }
}
