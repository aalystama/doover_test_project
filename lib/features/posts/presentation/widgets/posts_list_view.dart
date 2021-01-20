import 'package:doover_test_project/core/consts/paddings.dart';
import 'package:doover_test_project/core/injection_container.dart';
import 'package:doover_test_project/features/posts/controllers/posts_cubit/posts_cubit.dart';
import 'package:doover_test_project/features/posts/presentation/screens/detailed_post_screen.dart';
import 'package:doover_test_project/features/posts/presentation/widgets/post_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostsListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<PostsCubit>(
      create: (_) => getIt<PostsCubit>()..getPosts(),
      child: BlocBuilder<PostsCubit, PostsState>(
        builder: (context, state) {
          if (state is PostsLoading) {
            return Center(child: CircularProgressIndicator());
          }

          if (state is PostsFailure) {
            return Center(child: Text(state.message));
          }

          if (state is PostsSuccess) {
            return ListView.separated(
              padding: DooverPaddings.kPostsListViewPadding,
              itemBuilder: (context, index) => FlatButton(
                padding: EdgeInsets.zero,
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => BlocProvider(
                        create: (_) => getIt<PostsCubit>()
                          ..getComments(state.posts[index]),
                        child: DetailedPostScreen(post: state.posts[index]),
                      ),
                    ),
                  );
                },
                child: PostCard(state.posts[index]),
              ),
              separatorBuilder: (context, index) => SizedBox(height: 10),
              itemCount: state.posts.length,
            );
          }

          return Offstage();
        },
      ),
    );
  }
}
