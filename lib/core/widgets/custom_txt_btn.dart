import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomTxtBtn extends StatelessWidget {
  const CustomTxtBtn({
    super.key,
    this.onPressed,
    required this.backgroundColor,
    required this.textColor,
    required this.text,
    this.fontSize,
    this.height,
  });
  final Color backgroundColor, textColor;
  final String text;
  final double? fontSize, height;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: height ?? 40,
        child: TextButton(
          onPressed: onPressed,
          // clipBehavior: Clip.antiAlias,
          style: TextButton.styleFrom(
            elevation: 1,
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: Text(
            text,
            style: Styles.textStyle16.copyWith(
              color: textColor,
              fontWeight: FontWeight.w600,
              fontSize: fontSize,
            ),
          ),
        ),
      ),
    );
  }
}
