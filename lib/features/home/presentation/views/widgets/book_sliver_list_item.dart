import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/rating_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookSliverListItem extends StatelessWidget {
  const BookSliverListItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView, extra: bookModel);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            CustomBookImage(imgURL: getImageUrl(bookModel)),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .55,
                    child: Text(
                      getBookTitle(bookModel),
                      style: getBookTitleTextStyle(bookModel),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    getBookAuthors(bookModel),
                    maxLines: 1,
                    style: Styles.textStyle14.copyWith(
                      color: Colors.white.withAlpha(128),
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 3),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Free',
                        style: Styles.textStyle16.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const RatingItem(),
                    ],
                  ),
                  const SizedBox(height: 3),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextStyle getBookTitleTextStyle(BookModel book) {
    return isAr(text: book.volumeInfo.title ?? '')
        ? Styles.textStyle18.copyWith(fontFamily: kGTSectraFine)
        : Styles.textStyle20.copyWith(fontFamily: kGTSectraFine);
  }

  String getImageUrl(BookModel book) {
    return book.volumeInfo.imageLinks?.thumbnail ?? kCustomFailureWidgetImg;
  }

  String getBookTitle(BookModel book) {
    return book.volumeInfo.title ?? 'Unknown';
  }

  String getBookAuthors(BookModel book) {
    return book.volumeInfo.authors?.join(', ') ?? 'Unknown';
  }

  bool isAr({required String text}) {
    if (text.isNotEmpty) return (RegExp(r'^[\u0600-\u06FF]').hasMatch(text));
    return false;
  }
}
