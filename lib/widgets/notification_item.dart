import 'package:flutter/material.dart';
import 'package:profile_page/default_colors.dart';
import 'package:profile_page/screens/post_inspect_screen.dart';
import 'package:profile_page/screens/profile_page.dart';
import 'package:profile_page/utils.dart';
import '../models/user_model.dart';
import '../models/post_model.dart';

enum NotificationType {
  like,
  dislike,
  favorite,
}

String notificationTypeToString(NotificationType type) {
  switch (type) {
    case NotificationType.like:
      return "liked";
    case NotificationType.dislike:
      return "disliked";
    case NotificationType.favorite:
      return "favorited";
  }
}

class NotificationItem extends StatelessWidget {
  const NotificationItem({
    super.key,
    required this.user,
    required this.post,
    required this.action,
  });

  final UserModel user;
  final PostModel post;
  final NotificationType action;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        // Background Container
        Container(
          width: 375,
          height: 200,
          decoration: roundedRectangle(
            DefaultColors.blockColor,
            outlineColor: DefaultColors.blockOutlineColor,
            roundness: 5,
          ),
        ),

        // Profile Picture
        Positioned(
          left: 28,
          child: GestureDetector(
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Scaffold(
                    body: ProfilePage(
                      user: user,
                    ),
                  ),
                ),
              )
            },
            child: CircleAvatar(
              foregroundImage: user.profilePic,
              radius: 50,
            ),
          ),
        ),

        // Notification Message
        Positioned(
          top: 10,
          bottom: 130,
          left: 150,
          right: 30,
          child: Container(
            alignment: Alignment.center,
            child: Text(
              "${user.name} ${notificationTypeToString(action)} your post!",
              textAlign: TextAlign.center,
            ),
          ),
        ),

        // Post Display
        Positioned(
          top: 80,
          bottom: 20,
          right: 30,
          left: 150,
          child: GestureDetector(
            onTap: () => {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PostInspectScreen(post: post),
                  ))
            },
            child: Container(
              alignment: Alignment.center,
              decoration: roundedRectangle(
                DefaultColors.fieldColor,
                outlineColor: DefaultColors.fieldOutlineColor,
                roundness: 5,
              ),
              child: Text(
                post.text,
                style: const TextStyle(fontSize: 14),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        )
      ],
    );
  }
}
