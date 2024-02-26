import 'package:flutter/material.dart';
import 'models/user_model.dart';

class Users {
  static const UserModel fahad = UserModel(
    handle: "AlqarniDev",
    name: "Fahad Alqarni",
    profilePic: AssetImage("assets/profile_pics/fahad.jpg"),
    profileBio:
        "Hi there! I'm a self-taught developer who's passionate about game development.",
    followers: 17,
    following: 95,
  );

  static const UserModel radwan = UserModel(
    handle: "RadwanAlbahrani",
    name: "Radwan Albahrani",
    profilePic: AssetImage("assets/profile_pics/radwan.jpeg"),
    profileBio: "Self Taught Programmer with proficiency in flutter.",
    followers: 38,
    following: 126,
  );

  static const UserModel hassan = UserModel(
    handle: "k4h23u",
    name: "Hassan",
    profilePic: AssetImage("assets/profile_pics/hassan.jpg"),
    profileBio: "Sophomore CCSIT student at IAU, Flutter & Java developer.",
    followers: 26,
    following: 74,
  );
}
