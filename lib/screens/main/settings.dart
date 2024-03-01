import 'package:flutter/material.dart';
import 'package:social_media/constants/constants.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          const SizedBox(height: 30),
          ListTile(
            leading: const Icon(Icons.settings, color: Constants.iconColor),
            title: const Text('General Settings',
                style: TextStyle(color: Constants.textColor)),
            trailing:
                const Icon(Icons.arrow_forward_ios, color: Constants.iconColor),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.person, color: Constants.iconColor),
            title: const Text('Profile Settings',
                style: TextStyle(color: Constants.textColor)),
            trailing:
                const Icon(Icons.arrow_forward_ios, color: Constants.iconColor),
            onTap: () {},
          ),
          ListTile(
            leading:
                const Icon(Icons.display_settings, color: Constants.iconColor),
            title: const Text('Display Settings',
                style: TextStyle(color: Constants.textColor)),
            trailing:
                const Icon(Icons.arrow_forward_ios, color: Constants.iconColor),
            onTap: () {},
          ),
          ListTile(
            leading:
                const Icon(Icons.notifications, color: Constants.iconColor),
            title: const Text('Notifications Settings',
                style: TextStyle(color: Constants.textColor)),
            trailing:
                const Icon(Icons.arrow_forward_ios, color: Constants.iconColor),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.lock, color: Constants.iconColor),
            title: const Text('Data Privacy Settings',
                style: TextStyle(color: Constants.textColor)),
            trailing:
                const Icon(Icons.arrow_forward_ios, color: Constants.iconColor),
            onTap: () {},
          ),
          ListTile(
            leading:
                const Icon(Icons.logout, color: Constants.iconSecondaryColor),
            title: const Text('Log Out',
                style: TextStyle(color: Constants.textSecondaryColor)),
            trailing: const Icon(Icons.arrow_forward_ios,
                color: Constants.iconSecondaryColor),
            onTap: () {},
          ),
          ListTile(
            leading:
                const Icon(Icons.report, color: Constants.iconSecondaryColor),
            title: const Text('Report',
                style: TextStyle(color: Constants.textSecondaryColor)),
            trailing: const Icon(Icons.arrow_forward_ios,
                color: Constants.iconSecondaryColor),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
