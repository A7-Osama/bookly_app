import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_section.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomBookDetailsAppBar(),
        Expanded(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Column(
                    children: [
                      BookDetailsSection(book: book),
                      SizedBox(height: MediaQuery.of(context).size.width * .15),
                    ],
                  ),
                ),
              ),
              const SimilarBooksSection(),
              const SliverToBoxAdapter(child: SizedBox(height: 40)),
            ],
          ),
        ),
      ],
    );
  }
}

// class BookDetailsBody extends StatelessWidget {
//   const BookDetailsBody({super.key, required this.book});
//   final BookModel book;
//   @override
//   Widget build(BuildContext context) {
//     return CustomScrollView(
//       slivers: [
//         SliverToBoxAdapter(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 30.0),
//             child: Column(
//               children: [
//                 const CustomBookDetailsAppBar(),
//                 BookDetailsSection(book: book),
//                 SizedBox(height: MediaQuery.of(context).size.width * .15),
//               ],
//             ),
//           ),
//         ),
//         const SimilarBooksSection(), // CPLT: Now properly wrapped in SliverToBoxAdapter
//         const SliverToBoxAdapter(child: SizedBox(height: 40)),
//       ],
//     );
//   }
// }

// import 'package:bookly_app/features/home/presentation/views/widgets/book_details_section.dart';
// import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
// import 'package:bookly_app/features/home/presentation/views/widgets/similar_books_section.dart';
// import 'package:flutter/material.dart';
// class BookDetailsBody extends StatelessWidget {
//   const BookDetailsBody({super.key});
//   @override
//   Widget build(BuildContext context) {
//     var width = MediaQuery.of(context).size.width;
//     return CustomScrollView(
//       slivers: [
//         SliverFillRemaining(
//           hasScrollBody: false,
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 30.0),
//             child: Column(
//               children: [
//                 const CustomBookDetailsAppBar(),
//                 const BookDetailsSection(),
//                 Expanded(child: SizedBox(height: width * .1)),
//                 const SimilarBooksSection(),
//                 const SizedBox(height: 40),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
