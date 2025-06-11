import 'package:shimmer/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image_shimmer.dart';

class SliverListItemShimmer extends StatelessWidget {
  const SliverListItemShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        height: 125,
        decoration: BoxDecoration(
          color: const Color(0x20FFFFFF),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            const SizedBox(width: 10),
            const CustomBookImageShimmer(),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .55,
                    height: 20,
                    child: Container(color: Colors.grey[300]),
                  ),
                  kSizedBoxh3,
                  SizedBox(
                    width: 100,
                    height: 16,
                    child: Container(color: Colors.grey[300]),
                  ),
                  kSizedBoxh3,
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 50,
                        height: 20,
                        child: Container(color: Colors.grey[300]),
                      ),
                      SizedBox(
                        width: 70,
                        height: 16,
                        child: Container(color: Colors.grey[300]),
                      ),
                    ],
                  ),
                  kSizedBoxh3,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
