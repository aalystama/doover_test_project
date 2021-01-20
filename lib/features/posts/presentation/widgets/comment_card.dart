import 'package:doover_test_project/core/consts/colors.dart';
import 'package:doover_test_project/core/consts/paddings.dart';
import 'package:doover_test_project/core/consts/text_styles.dart';
import 'package:doover_test_project/features/posts/data/models/comment.dart';
import 'package:flutter/material.dart';

class CommentCard extends StatelessWidget {
  final Comment comment;

  const CommentCard({Key key, this.comment}) : super(key: key);

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
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: DooverColors.kAvatarBackgroundColor,
                child: Icon(
                  Icons.person,
                  color: DooverColors.kAvatarIconColor,
                ),
              ),
              SizedBox(width: 16),
              Text(
                comment.email,
                style: DooverTextStyles.kCommentAuthorTextStyle,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
          SizedBox(height: 16),
          Text(
            comment.body,
            style: DooverTextStyles.kCommentBodyTextStyle,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
