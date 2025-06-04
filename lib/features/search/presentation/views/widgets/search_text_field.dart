import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bookly_app/core/utils/bookly_helpers.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
    this.onSubmitted,
    this.onChanged,
    this.onTap,
  });
  final void Function(String)? onSubmitted;
  final void Function(String)? onChanged;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: TextField(
        style: const TextStyle(color: Colors.black),
        enabled: true,
        onChanged: onChanged,
        onSubmitted: onSubmitted,
        decoration: InputDecoration(
          suffixIcon: GestureDetector(
            onTap: onTap,
            child: const Opacity(
              opacity: 0.6,
              child: Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 22,
                color: kPrimaryColor,
              ),
            ),
          ),
          filled: true,
          fillColor: Colors.white,
          hintText: 'Search for a book ...',
          hintStyle: const TextStyle(
            fontWeight: FontWeight.w400,
            color: Colors.grey,
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 15,
          ),
          border: Bookly.border(null),
          enabledBorder: Bookly.border(null),
          focusedBorder: Bookly.border(null),
        ),
      ),
    );
  }
}
