import 'package:flutter/material.dart';
import '../models/post_model.dart';
import '../widgets/post.dart';

class PostInspectScreen extends StatelessWidget {
  const PostInspectScreen({
    super.key,
    required this.post,
  });

  final PostModel post;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Post(
          post: post,
          inspectable: false,
        ),
      ),
    );
  }
}
