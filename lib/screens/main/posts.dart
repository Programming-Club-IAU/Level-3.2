import 'package:flutter/material.dart';
import 'package:social_media/constants/constants.dart';

class Post {
  final String profilePic;
  final String username;
  final String text;
  int likesCount;
  int favoritesCount;
  int repliesCount;

  Post({
    required this.profilePic,
    required this.username,
    required this.text,
    this.likesCount = 0,
    this.favoritesCount = 0,
    this.repliesCount = 0,
  });
}

List<Post> forYouPosts = [
  Post(
      profilePic: 'https://i.pravatar.cc/150?img=68',
      username: '@user1',
      text: 'This is a post from user1'),
  Post(
      profilePic: 'https://i.pravatar.cc/150?img=4',
      username: '@user2',
      text: 'This is a post from user2'),
  Post(
      profilePic: 'https://i.pravatar.cc/150?img=62',
      username: '@user3',
      text: 'This is a post from user3'),
];

List<Post> followingPosts = [
  Post(
      profilePic: 'https://i.pravatar.cc/150?img=59',
      username: '@user4',
      text: 'This is a post from user4'),
  Post(
      profilePic: 'https://i.pravatar.cc/150?img=10',
      username: '@user5',
      text: 'This is a post from user5'),
  Post(
      profilePic: 'https://i.pravatar.cc/150?img=5',
      username: '@user6',
      text: 'This is a post from user6'),
];

// This is a list of posts that the user has made
List<Post> myPosts = [
  Post(
      profilePic: 'https://i.pravatar.cc/150?img=52',
      username: '@myUsername',
      text: 'This is my first post'),
  Post(
      profilePic: 'https://i.pravatar.cc/150?img=52',
      username: '@myUsername',
      text: 'This is my second post'),
  Post(
      profilePic: 'https://i.pravatar.cc/150?img=52',
      username: '@myUsername',
      text: 'This is my third post'),
];

class PostCard extends StatefulWidget {
  final Post post;

  const PostCard({super.key, required this.post});

  @override
  _PostCardState createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Constants.postColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: CircleAvatar(
                    radius: Constants.postSize / 2,
                    backgroundImage: NetworkImage(widget.post.profilePic),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.post.username),
                      Text(widget.post.text),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.favorite),
                      onPressed: () {
                        setState(() {
                          widget.post.likesCount++;
                        });
                      },
                    ),
                    Text('${widget.post.likesCount}'),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.star),
                      onPressed: () {
                        setState(() {
                          widget.post.favoritesCount++;
                        });
                      },
                    ),
                    Text('${widget.post.favoritesCount}'),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.chat_bubble),
                      onPressed: () {
                        setState(() {
                          widget.post.repliesCount++;
                        });
                      },
                    ),
                    Text('${widget.post.repliesCount}'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
