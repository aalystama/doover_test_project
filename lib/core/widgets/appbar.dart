import 'package:doover_test_project/core/consts/gradients.dart';
import 'package:doover_test_project/core/consts/text_styles.dart';
import 'package:flutter/material.dart';

class DooverAppBar extends StatelessWidget {
  final String title;
  final bool isAppBarVisible;

  const DooverAppBar({Key key, this.title, this.isAppBarVisible = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: DooverGradients.kMainGradient,
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(4),
        ),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: IconButton(
              padding: EdgeInsets.zero,
              icon: Icon(Icons.arrow_back),
              color: Colors.white,
              onPressed: () {},
            ),
          ),
          Center(
            child: Text(
              title,
              style: DooverTextStyles.kAppBarTextStyle,
            ),
          ),
        ],
      ),
    );
  }
}
