import 'package:doover_test_project/core/consts/paddings.dart';
import 'package:doover_test_project/core/widgets/appbar.dart';
import 'package:doover_test_project/features/posts/data/models/comment.dart';
import 'package:doover_test_project/features/posts/presentation/widgets/comment_card.dart';
import 'package:flutter/material.dart';

class CommentsScreen extends StatelessWidget {
  final List<Comment> comments;

  const CommentsScreen({Key key, this.comments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(
            MediaQuery.of(context).size.width,
            kToolbarHeight,
          ),
          child: DooverAppBar(title: 'Comments'),
        ),
        body: ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          padding: DooverPaddings.kPostsListViewPadding,
          itemBuilder: (context, index) => CommentCard(
            comment: comments[index],
          ),
          separatorBuilder: (context, index) => SizedBox(height: 10),
          itemCount: comments.length,
        ),
      ),
    );
  }
}
