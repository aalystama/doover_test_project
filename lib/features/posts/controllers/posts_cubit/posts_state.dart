part of 'posts_cubit.dart';

@immutable
abstract class PostsState {}

class PostsInitial extends PostsState {}

class PostsLoading extends PostsState {}

class PostsFailure extends PostsState {
  final String message;

  PostsFailure(this.message);
}

class PostsCommentsSuccess extends PostsState {
  final List<Comment> comments;

  PostsCommentsSuccess(this.comments);
}

class PostsSuccess extends PostsState {
  final List<Post> posts;

  PostsSuccess(this.posts);
}
