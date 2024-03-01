import 'package:flutter/material.dart';
import 'package:social_media/constants/constants.dart';
import 'package:social_media/model/notificationsmodel.dart';

class NotificationItem extends StatelessWidget {
  final String avatarUrl;
  final String message;

  const NotificationItem(
      {super.key, required this.avatarUrl, required this.message});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(avatarUrl),
          ),
          title: Text(message,
              style: const TextStyle(color: Constants.notificationTextColor)),
          tileColor: Constants.notificationBackgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(Constants.notificationBorderRadius),
          ),
        ),
        Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.85,
            child: const Divider(
              color: Constants.dividerColor,
              thickness: 0.2,
            ),
          ),
        ),
      ],
    );
  }
}

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          return NotificationItem(
            avatarUrl: notifications[index].avatarUrl,
            message: notifications[index].message,
          );
        },
      ),
    );
  }
}
