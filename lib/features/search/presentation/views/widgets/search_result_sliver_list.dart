import 'package:bookly_app/features/home/presentation/views/widgets/book_sliver_list_item.dart';
import 'package:flutter/material.dart';

class SearchResultSliverList extends StatelessWidget {
  const SearchResultSliverList({super.key, required this.childCount});
  final int childCount;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => const Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: BookSliverListItem(),
        ),
        childCount: childCount,
      ),
    );
  }
}
