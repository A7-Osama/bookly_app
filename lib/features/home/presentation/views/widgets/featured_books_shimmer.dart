import 'package:flutter/material.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image_shimmer.dart';

class FeaturedBooksShimmer extends StatelessWidget {
  const FeaturedBooksShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 0.3;
    return SizedBox(
      height: height,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: CustomBookImageShimmer(),
          );
        },
      ),
    );
  }
}
