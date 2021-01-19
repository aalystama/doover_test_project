import 'package:doover_test_project/features/posts/data/models/comment.dart';
import 'package:doover_test_project/features/posts/data/models/post.dart';

abstract class PostsRepostitory {
  List<Comment> getComments();

  List<Post> getPosts();
}