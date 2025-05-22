import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/search_result_sliver_list.dart';
import 'package:flutter/material.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Keeping the search field fixed at the top
          SearchTextField(),
          SizedBox(height: 16),
          // Container(height: 10, color: kPrimaryColor),
          // const SizedBox(height: 10), // Optional spacing
          // Wrapping the list in Expanded to ensure it takes remaining space and scrolls
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Text('Search Results', style: Styles.textStyle18),
                ),
                SearchResultSliverList(childCount: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
