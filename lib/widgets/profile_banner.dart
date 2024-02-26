import 'package:flutter/material.dart';
import '../default_colors.dart';
import '../utils.dart';
import '../models/user_model.dart';

class ProfileBanner extends StatelessWidget {
  const ProfileBanner({
    super.key,
    required this.user,
    this.cardColor = DefaultColors.profileCardColor,
  });

  final UserModel user;
  final Color cardColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        // The big rectangle
        Container(
          width: 350,
          height: 400,
          padding: const EdgeInsets.all(25),
          decoration: roundedRectangle(
            cardColor,
            bloomIntensity: 40,
            shadow: false,
            bloom: false,
          ),
        ),

        // ======= Profile Picture =======
        Positioned(
          // positioned at top
          top: -15,

          // Avatar wrapped in PhysicalModel to cast shadow
          child: PhysicalModel(
            color: Colors.black,
            shape: BoxShape.circle,
            elevation: 16,
            child: CircleAvatar(
              radius: 65,
              foregroundImage: user.profilePic,
            ),
          ),
        ),

        // The name field
        Positioned(
          top: 110,
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(6),
            decoration: roundedRectangle(
              Colors.white,
              roundness: 5,
              bloomIntensity: 16,
              bloom: false,
              shadow: false,
            ),
            child: Column(
              children: [
                Text(
                  user.name,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 6, 6, 6),
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "@${user.handle}",
                  style: const TextStyle(
                    color: Color.fromARGB(255, 92, 92, 92),
                    fontSize: 10,
                  ),
                )
              ],
            ),
          ),
        ),

        // Following / Followers
        Positioned(
          top: 190,
          bottom: 170,
          child: Container(
            width: 300,
            decoration: roundedRectangle(
              DefaultColors.fieldColor,
              outlineColor: DefaultColors.fieldOutlineColor,
              roundness: 8,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Followers ${user.followers}"),
                const SizedBox(width: 4),
                Text("Following ${user.following}"),
              ],
            ),
          ),
        ),

        // Profile Bio
        Positioned(
          top: 250,
          bottom: 20,
          child: Container(
            padding: const EdgeInsets.all(5),
            alignment: Alignment.center,
            width: 325,
            decoration: roundedRectangle(
              DefaultColors.fieldColor,
              outlineColor: DefaultColors.fieldOutlineColor,
            ),
            child: Text(
                (user.profileBio != null)
                    ? user.profileBio!
                    : "No Bio Provided",
                textAlign: TextAlign.center),
          ),
        ),
      ],
    );
  }
}
