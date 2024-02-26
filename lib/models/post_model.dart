import 'package:flutter/material.dart';
import 'user_model.dart';

class PostModel {
  const PostModel(
    this.text, {
    required this.user,
    this.imageAttachment,
    this.parent,
    this.replies,
    this.likes = 0,
    this.dislikes = 0,
    this.favorites = 0,
  });

  final UserModel user;
  final String text;
  final ImageProvider? imageAttachment;
  final PostModel? parent;
  final List<PostModel>? replies;
  final int likes;
  final int dislikes;
  final int favorites;
}
