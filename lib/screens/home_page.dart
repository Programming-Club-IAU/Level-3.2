import 'package:flutter/material.dart';
import 'package:profile_page/models/post_model.dart';
import '../widgets/post.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.posts});

  final List<PostModel> posts;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: posts.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Post(post: posts[index]),
        );
      },
    );
  }
}
