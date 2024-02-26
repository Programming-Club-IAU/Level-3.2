import 'package:flutter/material.dart';
import 'package:profile_page/default_colors.dart';
import 'package:profile_page/models/post_model.dart';
import 'package:profile_page/utils.dart';
import 'package:profile_page/widgets/post.dart';
import '../widgets/search_field.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SearchField(),
    );
  }
}

class SearchResultsPage extends StatelessWidget {
  const SearchResultsPage({
    super.key,
    required this.searchCriteria,
    required this.searchResults,
  });

  final String searchCriteria;
  final List<PostModel> searchResults;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: searchResults.length + 1,
      itemBuilder: (context, index) => (index == 0)
          ? UnconstrainedBox(
              child: Container(
                margin: const EdgeInsetsDirectional.symmetric(vertical: 10),
                padding: const EdgeInsets.all(10),
                alignment: Alignment.center,
                decoration: roundedRectangle(
                  DefaultColors.fieldColor,
                  outlineColor: DefaultColors.fieldOutlineColor,
                  roundness: 10,
                ),
                width: 200,
                child: Text((searchResults.isEmpty)
                    ? "No results found"
                    : "Results for '$searchCriteria'"),
              ),
            )
          : Padding(
              padding: const EdgeInsetsDirectional.symmetric(vertical: 10),
              child: Post(post: searchResults[index - 1]),
            ),
    ));
  }
}
