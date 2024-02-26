import 'package:flutter/material.dart';
import '../widgets/profile_banner.dart';
import '../models/user_model.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    super.key,
    this.blockPadding = 20,
    required this.user,
  });

  final double blockPadding;
  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        physics: const BouncingScrollPhysics(),
        addAutomaticKeepAlives: false,
        // All the items in the list are wrapped with a Padding widget to create space between the items, that is the "blockPadding"
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 40),
            child: ProfileBanner(user: user),
          ),
        ],
      ),
    );
  }
}
