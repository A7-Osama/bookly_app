import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/rating_item.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: CustomBookImage(
            imgURL:
                book.volumeInfo.imageLinks?.thumbnail ??
                kCustomFailureWidgetImg,
          ),
        ),
        SizedBox(height: width * .07),
        Text(
          book.volumeInfo.title ?? 'Unknown',
          // 'The Jungle Book',
          style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: width * .014),
        Text(
          book.volumeInfo.authors?.toString() ?? 'Unknown',
          // 'Rudyard Kipling',
          textAlign: TextAlign.center,
          style: Styles.textStyle18.copyWith(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w500,
            color: Colors.white.withAlpha(178),
          ),
        ),
        SizedBox(height: width * .02),
        const RatingItem(mainAxisAlignment: MainAxisAlignment.center),
        SizedBox(height: width * .06),
        BooksAction(onLPressed: () {}, onRPressed: () {}, book: book),
        SizedBox(height: width * .06),
      ],
    );
  }
}
