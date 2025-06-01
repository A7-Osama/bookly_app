import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RatingItem extends StatelessWidget {
  const RatingItem({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Padding(
          padding: EdgeInsets.only(right: 6.3),
          child: Icon(
            FontAwesomeIcons.solidStar,
            color: Color(0xffFFDD4F),
            size: 14,
          ),
        ),
        const Text('4.8', style: Styles.textStyle16),
        const SizedBox(width: 5),
        Text(
          '(2390)',
          style: Styles.textStyle14.copyWith(
            color: Colors.white.withAlpha(128),
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(width: 10),
      ],
    );
  }
}
