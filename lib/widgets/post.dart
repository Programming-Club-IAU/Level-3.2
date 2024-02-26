import 'package:flutter/material.dart';
import 'package:profile_page/default_colors.dart';
import '../models/post_model.dart';
import '../utils.dart';
import 'profile_display.dart';
import '../screens/post_inspect_screen.dart';

class Post extends StatelessWidget {
  const Post({
    super.key,
    required this.post,
    this.inspectable = true,
  });

  final PostModel post;
  final bool inspectable;

  @override
  Widget build(BuildContext context) {
    // The widgets to be displayed in the column

    return Container(
      margin: const EdgeInsets.only(left: 24.0, right: 24.0),
      decoration: roundedRectangle(
        DefaultColors.blockColor,
        outlineColor: DefaultColors.blockOutlineColor,
        roundness: 10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Profile Display (top-left)
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 12.0,
            ),
            child: ProfileDisplay(user: post.user),
          ),

          // Post Text + Attachment
          GestureDetector(
            onTap: () => {
              if (inspectable)
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PostInspectScreen(post: post),
                  ),
                ),
            },
            child: Container(
              decoration: roundedRectangle(
                DefaultColors.fieldColor,
                outlineColor: DefaultColors.fieldOutlineColor,
                roundness: 5,
              ),
              alignment: (post.imageAttachment != null)
                  ? Alignment.center
                  : Alignment.topLeft,
              margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 4.0,
              ),
              child: Column(
                children: [
                  Text(
                    post.text,
                    style: const TextStyle(fontSize: 16),
                  ),
                  // Image attachment, if it exists
                  if (post.imageAttachment != null)
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 6),
                      height: 250,
                      width: 250,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: post.imageAttachment!)),
                    ),
                ],
              ),
            ),
          ),

          // Post Engagements Row
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: [
                // Replies
                Container(
                  height: 60,
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Icon(
                        Icons.comment_outlined,
                        size: 30,
                      ),
                      Text(
                        (post.replies == null) ? "0" : "${post.replies}",
                        style: const TextStyle(fontSize: 13),
                      ),
                    ],
                  ),
                ),

                // Likes
                Container(
                  height: 60,
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Icon(
                        Icons.thumb_up_outlined,
                        size: 30,
                      ),
                      Text(
                        "${post.likes}",
                        style: const TextStyle(fontSize: 13),
                      ),
                    ],
                  ),
                ),

                // Dislikes
                Container(
                  height: 60,
                  alignment: Alignment.topCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Icon(
                        Icons.thumb_down_outlined,
                        size: 30,
                      ),
                      Text(
                        "${post.dislikes}",
                        style: const TextStyle(fontSize: 13),
                      ),
                    ],
                  ),
                ),

                // Favorites
                Container(
                  height: 60,
                  alignment: Alignment.topCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Icon(
                        Icons.favorite_outline,
                        size: 30,
                      ),
                      Text(
                        "${post.favorites}",
                        style: const TextStyle(fontSize: 13),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
