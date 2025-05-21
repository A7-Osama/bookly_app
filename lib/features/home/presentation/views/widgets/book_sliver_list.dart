import 'package:bookly_app/features/home/presentation/views/widgets/book_sliver_list_item.dart';
import 'package:flutter/material.dart';

class BookSliverList extends StatelessWidget {
  const BookSliverList({super.key, required this.childCount});
  final int childCount;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => const Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
          child: BookSliverListItem(),
        ),
        childCount: childCount,
      ),
    );
  }
}
