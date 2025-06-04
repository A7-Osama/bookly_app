import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/bookly_helpers.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widgets/about_us_alert_dialog.dart';
import 'package:bookly_app/core/widgets/custom_txt_btn.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_books_list_builder.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_sliver_list.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  // This widget is the body of the home view, which includes a custom app bar,
  // a list of featured books, and a sliver list of the newest books.
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        const SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: kPadding, child: CustomAppBar()),
              FeaturedBooksListBuilder(),
              SizedBox(height: 50),
              Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text('Newest Books', style: Styles.textStyle18),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
        const BookSliverList(),
        const SliverToBoxAdapter(child: SizedBox(height: 20)),
        CustomTxtBtn(
          backgroundColor: Colors.transparent,
          textColor: kSecondaryColor,
          text: 'About The Developer',
          onPressed:
              () => Bookly.showAlertDialog(context, const AboutUsWidget()),
          fontSize: 14,
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 25)),
      ],
    );
  }
}

// This widget builds the body of the home view, including the custom app bar,
// featured books list, and a sliver list of the newest books.
