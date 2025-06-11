// import 'package:bookly_app/core/utils/assets_data.dart';
// import 'package:bookly_app/core/widgets/error_image.dart';
import 'package:bookly_app/core/widgets/place_holder_image.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image_shimmer.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imgURL});
  final String imgURL;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(16)),
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: imgURL,
          placeholder:
              (context, url) => const CustomBookImageShimmer(), //ErrorImage(),
          errorWidget: (context, url, error) => const PlaceHolderImage(),
        ),
      ),
    );
  }
}
