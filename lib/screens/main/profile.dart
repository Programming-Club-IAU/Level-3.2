import 'package:flutter/material.dart';
import 'posts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Profile'),
        ),
        body: Column(
          children: <Widget>[
            const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=52'),
            ),
            const Text('@username', style: TextStyle(fontSize: 24)),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Following: 100', style: TextStyle(fontSize: 16)),
                Text('Followers: 200', style: TextStyle(fontSize: 16)),
              ],
            ),
            const TabBar(
              tabs: [
                Tab(text: 'Posts'),
                Tab(text: 'Likes'),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  ListView.builder(
                    itemCount: myPosts.length,
                    itemBuilder: (context, index) {
                      return PostCard(post: myPosts[index]);
                    },
                  ),
                  ListView.builder(
                    itemCount: forYouPosts.length,
                    itemBuilder: (context, index) {
                      return PostCard(post: forYouPosts[index]);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
