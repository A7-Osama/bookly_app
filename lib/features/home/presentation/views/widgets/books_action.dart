import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/bookly_helpers.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({
    super.key,
    required this.onLPressed,
    required this.onRPressed,
    required this.book,
  });
  final void Function()? onLPressed;
  final void Function()? onRPressed;
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Bookly.lightSwitchGettor(
              book,
              const Color(0xffffffff),
              const Color(0x50ffffff),
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: () async => Bookly.launcher(book),
              text: 'Free Preview',
              fontSize: 16,
              backgroundColor: kSecondaryColor,
              textColor: const Color(0xffffffff),
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
