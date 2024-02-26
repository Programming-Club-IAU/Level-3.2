import 'package:flutter/material.dart';
import '../screens/profile_page.dart';
import '../models/user_model.dart';
import '../default_colors.dart';

class ProfileDisplay extends StatelessWidget {
  const ProfileDisplay({
    super.key,
    required this.user,
  });

  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Scaffold(
                body: ProfilePage(
              user: user,
            )),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            foregroundImage: user.profilePic,
            radius: 30,
          ),
          const SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            textDirection: TextDirection.ltr,
            children: [
              Text(
                user.name,
                style: const TextStyle(fontSize: 14),
              ),
              Text(
                "@${user.handle}",
                style: const TextStyle(
                  color: DefaultColors.userHandleColor,
                  fontSize: 10,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
