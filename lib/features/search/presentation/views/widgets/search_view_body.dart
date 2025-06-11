import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/search/presentation/manager/cubit/search_books_cubit.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/search_result_sliver_list.dart';
import 'package:flutter/material.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/search_text_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    String searchQuery = '';
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchTextField(
            onTap: () => searchBooksByQuery(context, searchQuery),
            onChanged: (data) {
              searchQuery = data;
              searchBooksByQuery(context, data);
            },
            onSubmitted: (data) => searchBooksByQuery(context, data),
          ),
          const SizedBox(height: 16),
          const Expanded(
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Text('Search Results', style: Styles.textStyle18),
                ),
                SearchResultSliverList(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void searchBooksByQuery(BuildContext context, String data) {
  BlocProvider.of<SearchBooksCubit>(
    context,
  ).searchQBooks(searchQuery: (data.isEmpty ? '' : data));
}
