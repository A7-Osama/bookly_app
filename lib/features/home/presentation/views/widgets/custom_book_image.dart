import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imgURL});
  final String imgURL;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.4 / 3.7,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(16)),
          color: Colors.black,
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(imgURL), //AssetImage(AssetsData.testImage),
          ),
        ),
      ),
    );
  }
}
