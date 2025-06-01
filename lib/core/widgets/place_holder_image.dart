import 'package:flutter/material.dart';

class PlaceHolderImage extends StatelessWidget {
  const PlaceHolderImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Opacity(opacity: 0.2, child: Container(color: Colors.white)),
        const Center(child: Icon(Icons.question_mark_outlined, size: 70)),
      ],
    );
  }
}
