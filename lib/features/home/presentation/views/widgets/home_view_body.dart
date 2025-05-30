import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_books_list_builder.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_sliver_list.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(padding: kPadding, child: CustomAppBar()),
              const FeaturedBooksListBuilder(),
              const SizedBox(height: 50),
              const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text('Best Sellers', style: Styles.textStyle18),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
        const BookSliverList(),
      ],
    );
  }
}

//You can use this instead of VSliverListBuilder, but
//it wont display all the items
// const SliverFillRemaining(
//   child: Padding(padding: kPadding, child: VListViewBuilder()),
// ),
