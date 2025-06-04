import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class Bookly {
  static OutlineInputBorder border(BorderRadius? bRadius) {
    return OutlineInputBorder(
      borderRadius: bRadius ?? BorderRadius.circular(16),
      borderSide: const BorderSide(
        color: kPrimaryColor,
        width: 2,
        style: BorderStyle.solid,
      ),
    );
  }

  static void showAlertDialog(BuildContext context, Widget alertDialog) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      },
    );
  }

  static TextStyle getBookTitleTextStyle(BookModel book) {
    return isAr(text: book.volumeInfo.title ?? '')
        ? Styles.textStyle18.copyWith(fontFamily: kGTSectraFine)
        : Styles.textStyle20.copyWith(fontFamily: kGTSectraFine);
  }

  static String getImageUrl(BookModel book) {
    return book.volumeInfo.imageLinks?.thumbnail ?? kCustomFailureWidgetImg;
  }

  static String getBookTitle(BookModel book) {
    return book.volumeInfo.title ?? 'Unknown';
  }

  static String getBookAuthors(BookModel book) {
    return book.volumeInfo.authors?.join(', ') ?? 'Unknown';
  }

  static bool isAr({required String text}) {
    if (text.isNotEmpty) return (RegExp(r'^[\u0600-\u06FF]').hasMatch(text));
    return false;
  }

  static bool isPdfAvailable(BookModel book) {
    final pdf = book.accessInfo?.pdf;
    final link = pdf?.acsTokenLink;
    return pdf?.isAvailable == true && link != null && link.isNotEmpty;
  }
}
