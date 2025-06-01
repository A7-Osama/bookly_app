import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/widgets/custom_failure_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SimilarFeaturedBooksLVB extends StatelessWidget {
  const SimilarFeaturedBooksLVB({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            // CPLT: SizedBox instead of SliverToBoxAdapter
            height: MediaQuery.of(context).size.height * .15,
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: state.books.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6.0),
                    child: GestureDetector(
                      onTap: () {
                        GoRouter.of(context).push(
                          AppRouter.kBookDetailsView,
                          extra: state.books[index],
                        );
                      },
                      child: CustomBookImage(
                        imgURL:
                            state
                                .books[index]
                                .volumeInfo
                                .imageLinks
                                ?.thumbnail ??
                            kCustomFailureWidgetImg,
                        //'https://via.placeholder.com/150', // CPLT: Default placeholder
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomFailureWidget(
            errMsg: state.errMsg,
          ); // CPLT: No SliverToBoxAdapter
        } else {
          return const CustomLoadingIndicator(); // CPLT: No SliverToBoxAdapter
        }
      },
    );
  }
}
