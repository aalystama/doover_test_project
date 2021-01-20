import 'package:doover_test_project/core/consts/colors.dart';
import 'package:doover_test_project/core/consts/paddings.dart';
import 'package:doover_test_project/core/consts/text_styles.dart';
import 'package:doover_test_project/features/posts/data/models/post.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final Post post;

  const PostCard(this.post, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: DooverPaddings.kPostCardPadding,
      decoration: BoxDecoration(
        color: DooverColors.kCardBackgroundColor,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            post.title,
            style: DooverTextStyles.kPostTitleTextStyle,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 8),
          Text(
            post.body,
            style: DooverTextStyles.kPostBodyTextStyle,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
