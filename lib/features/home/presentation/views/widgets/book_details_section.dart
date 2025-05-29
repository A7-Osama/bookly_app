import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/rating_item.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: const CustomBookImage(
            imgURL:
                'https://th.bing.com/th/id/OIF.YVwDt9Wk5eQtHbD2qmu8sw?rs=1&pid=ImgDetMain',
          ),
        ),
        SizedBox(height: width * .07),
        Text(
          'The Jungle Book',
          style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: width * .014),
        Text(
          'Rudyard Kipling',
          style: Styles.textStyle18.copyWith(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w500,
            color: Colors.white.withAlpha(178),
          ),
        ),
        SizedBox(height: width * .02),
        const RatingItem(mainAxisAlignment: MainAxisAlignment.center),
        SizedBox(height: width * .06),
        const BooksAction(),
      ],
    );
  }
}
