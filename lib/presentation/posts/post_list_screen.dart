import 'package:bnv_opendata/presentation/posts/cubit/post_list_cubit.dart';
import 'package:bnv_opendata/presentation/posts/cubit/post_list_state.dart';
import 'package:bnv_opendata/widgets/views/state_stream_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class PostListScreen extends StatelessWidget {
  const PostListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => PostListCubit(Get.find())..fetchPosts(),
      child: Builder(
        builder: (context) {
          final cubit = context.read<PostListCubit>();
          return Scaffold(
            appBar: AppBar(title: const Text('Posts (API Demo)')),
            body: StateStreamLayout(
              stream: cubit.stateStream,
              retry: cubit.fetchPosts,
              error: cubit.error,
              textEmpty: 'No posts',
              child: BlocBuilder<PostListCubit, PostListState>(
                builder: (context, state) {
                  return ListView.separated(
                    padding: const EdgeInsets.all(16),
                    itemCount: state.posts.length,
                    separatorBuilder: (_, __) => const SizedBox(height: 8),
                    itemBuilder: (context, index) {
                      final post = state.posts[index];
                      return Card(
                        child: ListTile(
                          leading: CircleAvatar(child: Text('${post.id}')),
                          title: Text(
                            post.title,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          subtitle: Text(
                            post.body,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
