import 'package:flutter/material.dart';

class Post {
  final String profilePic;
  final String username;
  final String text;

  Post({required this.profilePic, required this.username, required this.text});
}

List<Post> forYouPosts = [
  Post(
      profilePic: 'assets/images/profile1.jpg',
      username: 'user1',
      text: 'This is a post from user1'),
  Post(
      profilePic: 'assets/images/profile2.jpg',
      username: 'user2',
      text: 'This is a post from user2'),
  Post(
      profilePic: 'assets/images/profile3.jpg',
      username: 'user3',
      text: 'This is a post from user3'),
];

List<Post> followingPosts = [
  Post(
      profilePic: 'assets/images/profile4.jpg',
      username: 'user4',
      text: 'This is a post from user4'),
  Post(
      profilePic: 'assets/images/profile5.jpg',
      username: 'user5',
      text: 'This is a post from user5'),
  Post(
      profilePic: 'assets/images/profile6.jpg',
      username: 'user6',
      text: 'This is a post from user6'),
];

class PostCard extends StatelessWidget {
  final Post post;

  PostCard({required this.post});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage(post.profilePic),
                ),
                SizedBox(width: 8.0),
                Text(post.username),
              ],
            ),
            SizedBox(height: 8.0),
            Text(post.text),
          ],
        ),
      ),
    );
  }
}
