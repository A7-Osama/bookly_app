import 'package:flutter/material.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/sliver_list_item_shimmer.dart';

class BookSliverListShimmer extends StatelessWidget {
  const BookSliverListShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          child: Column(
            children: [
              SliverListItemShimmer(),
              SizedBox(height: 5),
              SizedBox(
                height: 40,
                child: Divider(
                  endIndent: 40,
                  indent: 40,
                  color: Color(0x40ffffff),
                  thickness: 1,
                  // indent: 10,
                ),
              ),
            ],
          ),
        ),
        childCount: 6,
      ),
    );
  }
}
