import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/widgets/custom_failure_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_sliver_list_item.dart';
import 'package:bookly_app/features/search/presentation/manager/cubit/search_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultSliverList extends StatelessWidget {
  const SearchResultSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBooksCubit, SearchBooksState>(
      builder: (context, state) {
        if (state is SearchBooksLoading) {
          return const SliverFillRemaining(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [CustomLoadingIndicator()],
            ),
          );
        } else if (state is SearchBooksFailure) {
          debugPrint(
            'SearchBooksFailure::::::::::::::::::::: x${state.errMsg}x',
          );
          return SearchMessage(message: state.errMsg);
        } else if (state is SearchBooksSuccess) {
          // Assuming state.books is a list of BookModel
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
          // If no search has been performed yet, you might want to show an empty state or a message
          return const SearchMessage(message: kSearchViewQone);
        } else {
          // Handle any other unexpected state
          return const SearchMessage(message: 'Unexpected state');
        }
      },
    );
  }
}

class SearchMessage extends StatelessWidget {
  const SearchMessage({super.key, required this.message});
  final String message;

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomFailureWidget(
            errMsg:
                message == 'Missing query.'
                    ? kSearchViewQtwo
                    : 'No Books Founded!', //message,
          ),
        ],
      ),
    );
  }
}
