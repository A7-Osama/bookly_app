import 'package:flutter/material.dart';
import 'package:bookly_app/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly_app/core/widgets/custom_failure_widget.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_sliver_list_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_sliver_list_shimmer.dart';
import 'package:bookly_app/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';

class BookSliverList extends StatelessWidget {
  const BookSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: state.books.length,
              (context, index) => Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 7,
                  horizontal: 20,
                ),
                child: Column(
                  children: [
                    BookSliverListItem(bookModel: state.books[index]),
                    const SizedBox(height: 5),
                    const SizedBox(height: 40, child: kDivider),
                  ],
                ),
              ),
            ),
          );
        } else if (state is NewestBooksFailure) {
          return SliverToBoxAdapter(
            child: CustomFailureWidget(errMsg: state.errMsg),
          );
        } else {
          return const BookSliverListShimmer();
        }
      },
    );
  }
}
