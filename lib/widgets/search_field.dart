import 'package:flutter/material.dart';
import 'package:profile_page/default_colors.dart';
import 'package:profile_page/posts.dart';
import 'package:profile_page/screens/search_page.dart';
import 'package:profile_page/utils.dart';
import '../models/post_model.dart';

class SearchField extends StatefulWidget {
  const SearchField({super.key});

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  late TextEditingController controller;
  String searchCriterion = '';

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 8),
          child: Text(
            "Search Posts",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ),

        // The Text Field
        Container(
          width: 350,
          padding: const EdgeInsets.all(20),
          decoration: roundedRectangle(
            DefaultColors.fieldColor,
            outlineColor: DefaultColors.fieldOutlineColor,
            roundness: 25,
          ),
          child: TextField(
            controller: controller,
            onSubmitted: (String value) {
              setState(
                () {
                  searchCriterion = value;
                },
              );
              List<PostModel> searchResults = Posts.searchPosts(value);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SearchResultsPage(
                    searchResults: searchResults,
                    searchCriteria: value,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
