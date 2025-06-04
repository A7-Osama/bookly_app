import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class LightSwitchWidget extends StatelessWidget {
  const LightSwitchWidget({
    super.key,
    required this.onLPressed,
    required this.foreColor,
  });

  final void Function()? onLPressed;
  final Color foreColor;
  @override
  Widget build(BuildContext context) {
    return CustomButton(
      onPressed: onLPressed,
      text: 'Download',
      backgroundColor: foreColor,
      textColor: Colors.black,
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(16),
        topLeft: Radius.circular(16),
      ),
    );
  }
}
