import 'package:doover_test_project/features/posts/data/datasources/posts_remote_datasource.dart';
import 'package:doover_test_project/features/posts/data/models/comment.dart';
import 'package:doover_test_project/features/posts/data/models/post.dart';
import 'package:http/http.dart';

abstract class PostsRepostitory {
  Future<List<Comment>> getComments(int postId);

  Future<List<Post>> getPosts();
}

class PostsRepositoryImpl implements PostsRepostitory {
  final PostsRemoteDataSource postsRemoteDataSource;

  PostsRepositoryImpl(this.postsRemoteDataSource);

  @override
  Future<List<Comment>> getComments(int postId) async {
    Response data = await postsRemoteDataSource.getComments(postId);

    return (data.body as List)
        .map((object) => Comment.fromJson(object))
        .toList();
  }

  @override
  Future<List<Post>> getPosts() async {
    Response data = await postsRemoteDataSource.getPosts();

    return (data.body as List).map((object) => Post.fromJson(object)).toList();
  }
}
