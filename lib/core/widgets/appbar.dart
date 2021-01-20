import 'package:doover_test_project/core/consts/gradients.dart';
import 'package:doover_test_project/core/consts/text_styles.dart';
import 'package:flutter/material.dart';

class DooverAppBar extends StatelessWidget {
  final String title;
  final bool isButtonVisible;

  const DooverAppBar({Key key, this.title, this.isButtonVisible = true})
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
          Center(
            child: Text(
              title,
              style: DooverTextStyles.kAppBarTextStyle,
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Offstage(
              offstage: !isButtonVisible,
              child: IconButton(
                padding: EdgeInsets.zero,
                icon: Icon(Icons.arrow_back),
                color: Colors.white,
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
