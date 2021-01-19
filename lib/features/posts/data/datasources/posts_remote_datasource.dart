import 'package:doover_test_project/core/config.dart';
import 'package:http/http.dart';

abstract class PostsRemoteDataSource {
  Future<Response> getPosts();

  Future<Response> getComments(int postId);
}

class PostsRemoteDataSourceImpl implements PostsRemoteDataSource {
  static const String path = '$API_URL/posts/';

  @override
  Future<Response> getComments(int postId) async {
    Response response = await get(path + '$postId/comments');

    return response;
  }

  @override
  Future<Response> getPosts() async {
    Response response = await get(path);

    return response;
  }

}