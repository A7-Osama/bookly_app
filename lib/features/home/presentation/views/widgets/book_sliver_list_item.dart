import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/bookly_helpers.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/rating_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';

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
            CustomBookImage(imgURL: Bookly.getImageUrl(bookModel)),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .55,
                    child: TitleItem(bookModel: bookModel),
                  ),
                  kSizedBoxh3,
                  AuthorItem(bookModel: bookModel),
                  kSizedBoxh3,
                  const Spacer(),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [PriceItem(), RatingItem()],
                  ),
                  kSizedBoxh3,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PriceItem extends StatelessWidget {
  const PriceItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Free',
      style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
    );
  }
}

class AuthorItem extends StatelessWidget {
  const AuthorItem({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Text(
      Bookly.getBookAuthors(bookModel),
      maxLines: 1,
      style: Styles.textStyle14.copyWith(color: Colors.white.withAlpha(128)),
      overflow: TextOverflow.ellipsis,
    );
  }
}

class TitleItem extends StatelessWidget {
  const TitleItem({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Text(
      Bookly.getBookTitle(bookModel),
      style: Bookly.getBookTitleTextStyle(bookModel),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}
