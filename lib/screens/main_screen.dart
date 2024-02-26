import 'package:flutter/material.dart';
import 'package:profile_page/users.dart';
import '../screens/search_page.dart';
import 'home_page.dart';
import 'profile_page.dart';
import 'notifications_page.dart';
import '../posts.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<Widget> _pages = [
    const HomePage(posts: Posts.homeFeed),
    const ProfilePage(user: Users.fahad),
    const SearchPage(),
    const NotificationsPage(),
  ];

  int _selectedPageIndex = 0;
  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "My Profile",
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person),
          ),
          BottomNavigationBarItem(
            label: "Search",
            icon: Icon(Icons.search_outlined),
            activeIcon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: "Notifications",
            icon: Icon(Icons.notifications_outlined),
            activeIcon: Icon(Icons.notifications),
          ),
        ],
        currentIndex: _selectedPageIndex,
        onTap: _selectPage,
      ),
      body: _pages[_selectedPageIndex],
    );
  }
}
