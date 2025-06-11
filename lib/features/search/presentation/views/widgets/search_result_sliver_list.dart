import 'package:flutter/material.dart';
import 'package:bookly_app/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/search_message.dart';
import 'package:bookly_app/features/search/presentation/manager/cubit/search_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_sliver_list_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_sliver_list_shimmer.dart';

class SearchResultSliverList extends StatelessWidget {
  const SearchResultSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBooksCubit, SearchBooksState>(
      builder: (context, state) {
        if (state is SearchBooksLoading) {
          return const BookSliverListShimmer();
        } else if (state is SearchBooksFailure) {
          return SearchMessage(message: state.errMsg);
        } else if (state is SearchBooksSuccess) {
          final books = state.books;
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: BookSliverListItem(bookModel: books[index]),
              ),
              childCount: books.length,
            ),
          );
        } else if (state is SearchBooksInitial) {
          return const SearchMessage(message: kSearchViewQone);
        } else {
          return const SearchMessage(message: 'Unexpected state');
        }
      },
    );
  }
}
