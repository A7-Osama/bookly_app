import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RatingItem extends StatelessWidget {
  const RatingItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 6.3),
          child: const Icon(
            FontAwesomeIcons.solidStar,
            color: Color(0xffFFDD4F),
            size: 18,
          ),
        ),
        const Text('4.8', style: Styles.textStyle16),
        const SizedBox(width: 5),
        Text(
          '(2390)',
          style: Styles.textStyle14.copyWith(color: Color(0xff707070)),
        ),
        const SizedBox(width: 10),
      ],
    );
  }
}
