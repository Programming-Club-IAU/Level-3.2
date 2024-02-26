import 'package:flutter/material.dart';

class UserModel {
  const UserModel({
    required this.handle,
    required this.name,
    this.profilePic = const AssetImage("assets/profile_pics/default.jpg"),
    this.profileBio,
    this.profileBanner,
    this.following = 0,
    this.followers = 0,
  });

  final String handle;
  final String name;
  final ImageProvider profilePic;
  final String? profileBio;
  final ImageProvider? profileBanner;
  final int following;
  final int followers;
}
