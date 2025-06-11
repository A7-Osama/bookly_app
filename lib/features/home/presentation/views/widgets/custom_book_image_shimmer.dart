import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomBookImageShimmer extends StatelessWidget {
  const CustomBookImageShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(16)),
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Shimmer.fromColors(
          baseColor: Colors.grey.shade300,
          highlightColor: Colors.grey.shade100,
          child: Opacity(
            opacity: 0.2,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
