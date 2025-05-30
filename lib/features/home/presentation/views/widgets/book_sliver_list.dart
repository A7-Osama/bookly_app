import 'package:bookly_app/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_sliver_list_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_books_list_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
                child: BookSliverListItem(bookModel: state.books[index]),
              ),
            ),
          );
        } else if (state is NewestBooksFailure) {
          return SliverToBoxAdapter(
            child: CustomFailureWidget(errMsg: state.errMsg),
          );
        } else {
          return SliverToBoxAdapter(child: CustomLoadingIndicator());
        }
      },
    );
  }
}
