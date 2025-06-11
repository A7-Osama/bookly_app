import 'package:flutter/material.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image_shimmer.dart';

class SimilarFeaturedBooksShimmer extends StatelessWidget {
  const SimilarFeaturedBooksShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 0.15;
    return SizedBox(
      height: height,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: CustomBookImageShimmer(),
          );
        },
      ),
    );
  }
}
