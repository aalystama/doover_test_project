import 'package:bloc/bloc.dart';
import 'package:doover_test_project/features/posts/data/models/post.dart';
import 'package:doover_test_project/features/posts/data/repositories/posts_repository.dart';
import 'package:meta/meta.dart';

part 'posts_state.dart';

class PostsCubit extends Cubit<PostsState> {
  final PostsRepostitory postsRepostitory;

  PostsCubit(this.postsRepostitory) : super(PostsInitial());

  void getPosts() async {
    emit(PostsLoading());
    try {
      final List<Post> posts = await postsRepostitory.getPosts();

      emit(PostsSuccess(posts));
    } on Exception catch (e) {
      emit(PostsFailure(e.toString()));
      throw (e);
    }
  }
}
