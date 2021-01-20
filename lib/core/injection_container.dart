import 'package:doover_test_project/features/posts/controllers/posts_cubit.dart';
import 'package:doover_test_project/features/posts/data/datasources/posts_remote_datasource.dart';
import 'package:doover_test_project/features/posts/data/repositories/posts_repository.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupInjections() {
  getIt.registerLazySingleton<PostsRemoteDataSource>(
    () => PostsRemoteDataSourceImpl(),
  );

  getIt.registerLazySingleton<PostsRepostitory>(
    () => PostsRepositoryImpl(getIt()),
  );

  getIt.registerFactory<PostsCubit>(
    () => PostsCubit(getIt()),
  );
}
