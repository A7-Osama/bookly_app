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
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            CustomBookImage(
              imgURL: bookModel.volumeInfo.imageLinks?.thumbnail ?? '',
            ),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .55,
                    child: Text(
                      bookModel.volumeInfo.title!,
                      // 'Harry Potter And The Goblet of Fire',
                      // textAlign: TextAlign.center,
                      style: Styles.textStyle20.copyWith(
                        fontFamily: kGTSectraFine,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 3),
                  // Spacer(flex: 1),
                  Text(
                    bookModel.volumeInfo.authors.toString(),
                    // 'J.K.  Rowling',
                    style: Styles.textStyle14.copyWith(
                      color: Colors.white.withAlpha(128),
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 3),
                  Spacer(),
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
}
