import 'package:bnv_opendata/config/base/base_cubit.dart';
import 'package:bnv_opendata/data/exception/app_exception.dart';
import 'package:bnv_opendata/data/model/post.dart';
import 'package:bnv_opendata/data/repository/post_repository.dart';
import 'package:bnv_opendata/data/result/result.dart';
import 'package:bnv_opendata/presentation/posts/cubit/post_list_state.dart';

class PostListCubit extends BaseCubit<PostListState> {
  PostListCubit(this._repository) : super(const PostListState());

  final PostRepository _repository;

  /// Giữ nguyên instance và mutate nội dung: StateStreamLayout giữ tham chiếu
  /// tới object này từ lúc build, chỉ rebuild khi stateStream emit.
  final AppException error = AppException('', '');

  Future<void> fetchPosts() async {
    showLoading();
    final result = await _repository.getPosts();
    if (result is Success<List<Post>>) {
      emit(state.copyWith(posts: result.data));
      result.data.isEmpty ? showEmpty() : showContent();
    } else if (result is Error<List<Post>>) {
      error
        ..title = result.exception.title
        ..message = result.exception.message;
      showError();
    }
  }
}
