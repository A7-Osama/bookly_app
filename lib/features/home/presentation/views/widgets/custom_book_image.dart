// import 'package:bookly_app/core/utils/assets_data.dart';
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
        aspectRatio: 2.4 / 3.7,
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: imgURL,
          placeholder: (context, url) => const ErrorImage(),
          errorWidget: (context, url, error) => const PlaceHolderImage(),
        ),
      ),
    );
  }
}

class PlaceHolderImage extends StatelessWidget {
  const PlaceHolderImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Opacity(opacity: 0.2, child: Container(color: Colors.white)),
        Center(child: Icon(Icons.question_mark_outlined, size: 70)),
      ],
    );
  }
}

class ErrorImage extends StatelessWidget {
  const ErrorImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Opacity(opacity: 0.2, child: Container(color: Colors.white)),
        const Center(child: CircularProgressIndicator()),
      ],
    );
  }
}
