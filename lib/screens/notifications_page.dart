import 'package:flutter/material.dart';
import 'package:profile_page/posts.dart';
import 'package:profile_page/users.dart';
import '../widgets/notification_item.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: const [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: NotificationItem(
            user: Users.radwan,
            post: FahadPosts.flutter,
            action: NotificationType.favorite,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: NotificationItem(
            user: Users.radwan,
            post: FahadPosts.flutter,
            action: NotificationType.like,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: NotificationItem(
            user: Users.hassan,
            post: FahadPosts.persona,
            action: NotificationType.like,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: NotificationItem(
            user: Users.hassan,
            post: FahadPosts.flutter,
            action: NotificationType.like,
          ),
        ),
      ],
    );
  }
}
