import 'package:flutter/material.dart';
import 'posts.dart';
import '/constants/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  bool _isSearching = false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.homeBackgroundColor,
      appBar: AppBar(
        backgroundColor: Constants.homeBackgroundColor,
        title: _isSearching
            ? TextField(
                decoration: const InputDecoration(
                  hintText: 'Search...',
                ),
                onChanged: (value) {
                  // Handle search input
                },
              )
            : const Text('Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              // Handle settings button press
            },
          ),
          IconButton(
            icon: Icon(_isSearching ? Icons.close : Icons.search),
            onPressed: () {
              setState(() {
                _isSearching = !_isSearching;
              });
            },
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Constants.indicateColor,
          tabs: const [
            Tab(text: 'For You'),
            Tab(text: 'Following'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          ListView.builder(
            itemCount: forYouPosts.length,
            itemBuilder: (context, index) {
              return PostCard(post: forYouPosts[index]);
            },
          ),
          ListView.builder(
            itemCount: followingPosts.length,
            itemBuilder: (context, index) {
              return PostCard(post: followingPosts[index]);
            },
          ),
        ],
      ),
    );
  }
}
