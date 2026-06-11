import 'package:bnv_opendata/data/model/post.dart';
import 'package:bnv_opendata/data/result/result.dart';
import 'package:bnv_opendata/data/services/post_service.dart';

class PostRepository {
  PostRepository(this._service);

  final PostService _service;

  Future<Result<List<Post>>> getPosts() =>
      runCatchingAsync(() => _service.getPosts(), (posts) => posts);
}
