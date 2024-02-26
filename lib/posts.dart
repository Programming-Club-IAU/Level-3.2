import 'package:flutter/material.dart';

import 'users.dart';
import 'models/post_model.dart';

class FahadPosts {
  static const PostModel persona = PostModel(
    "The new Persona 3 remake is AWESOME",
    user: Users.fahad,
    likes: 6,
    favorites: 2,
    dislikes: 1,
    imageAttachment: AssetImage("assets/posts/persona.jpg"),
  );
  static const PostModel flutter = PostModel(
    "Learning flutter's been pretty cool",
    user: Users.fahad,
    likes: 2,
  );
}

class RadwanPosts {
  static const PostModel event = PostModel(
    "Yesterday's event was probably the best CCSIT event of all time ngl",
    user: Users.radwan,
    likes: 8,
    favorites: 3,
  );
  static const PostModel workshop = PostModel(
    "Everybody don't forget to register for tomorrow's workshop!",
    user: Users.radwan,
    likes: 3,
  );
}

class HassanPosts {
  static const PostModel github = PostModel(
    "Thank you everyone who attended our github workshop!",
    user: Users.hassan,
    likes: 7,
  );
  static const PostModel math = PostModel(
    "Mathematics is the art of explanation",
    user: Users.hassan,
    likes: 3,
  );
}

class Posts {
  static const List<PostModel> allPosts = [
    FahadPosts.flutter,
    FahadPosts.persona,
    RadwanPosts.event,
    RadwanPosts.workshop,
    HassanPosts.github,
    HassanPosts.math,
  ];

  static const List<PostModel> homeFeed = [
    FahadPosts.persona,
    RadwanPosts.event,
    HassanPosts.github,
    HassanPosts.math,
    FahadPosts.flutter,
    RadwanPosts.workshop,
  ];

  static List<PostModel> searchPosts(String searchCriteria) {
    List<PostModel> posts = [];

    for (int i = 0; i < allPosts.length; i++) {
      if (allPosts[i]
          .text
          .toLowerCase()
          .contains(searchCriteria.toLowerCase())) {
        posts.add(allPosts[i]);
      }
    }

    return posts;
  }
}
