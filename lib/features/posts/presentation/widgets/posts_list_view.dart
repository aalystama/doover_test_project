import 'package:doover_test_project/features/posts/controllers/posts_cubit.dart';
import 'package:doover_test_project/features/posts/presentation/widgets/post_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostsListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      builder: (context, state) {
        if (state is PostsLoading) {
          return Center(child: CircularProgressIndicator());
        }

        if (state is PostsFailure) {
          return Center(child: Text(state.message));
        }

        if (state is PostsSuccess) {
          return ListView.separated(
            itemBuilder: (context, index) => PostCard(state.posts[index]),
            separatorBuilder: (context, index) => SizedBox(height: 10),
            itemCount: state.posts.length,
          );
        }

        return Offstage();
      },
    );
  }
}
