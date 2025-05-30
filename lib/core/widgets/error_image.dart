import 'package:flutter/material.dart';

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
