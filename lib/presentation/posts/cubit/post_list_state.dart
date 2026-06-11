import 'package:bnv_opendata/data/model/post.dart';
import 'package:equatable/equatable.dart';

class PostListState extends Equatable {
  const PostListState({this.posts = const []});

  final List<Post> posts;

  PostListState copyWith({List<Post>? posts}) {
    return PostListState(posts: posts ?? this.posts);
  }

  @override
  List<Object?> get props => [posts];
}
