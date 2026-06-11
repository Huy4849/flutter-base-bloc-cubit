import 'package:bnv_opendata/data/model/post.dart';
import 'package:bnv_opendata/utils/constants/api_constants.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'post_service.g.dart';

@RestApi()
abstract class PostService {
  factory PostService(Dio dio, {String baseUrl}) = _PostService;

  @GET(ApiConstants.POSTS)
  Future<List<Post>> getPosts();
}
