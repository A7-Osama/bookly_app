import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksListBuilder extends StatelessWidget {
  const FeaturedBooksListBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              // itemCount: 11,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: CustomBookImage(),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomFailureWidget(errMsg: state.errMsg);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}

class CustomFailureWidget extends StatelessWidget {
  const CustomFailureWidget({super.key, required this.errMsg});
  final String errMsg;
  @override
  Widget build(BuildContext context) {
    return const Text(kCustomFailureWidgetText, style: Styles.textStyle18);
  }
}

class CustomLoadingIndicator extends StatelessWidget {
  const CustomLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}
