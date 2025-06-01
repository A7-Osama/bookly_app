import 'package:bookly_app/features/home/presentation/views/widgets/similar_featured_books_l_v_b.dart';
import 'package:flutter/material.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Text(
              'You can also like:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.width * .05),
          const SimilarFeaturedBooksLVB(),
        ],
      ),
    );
  }
}

// import 'package:bookly_app/core/utils/styles.dart';
// import 'package:bookly_app/features/home/presentation/views/widgets/similar_featured_books_l_v_b.dart';
// import 'package:flutter/material.dart';
// class SimilarBooksSection extends StatelessWidget {
//   const SimilarBooksSection({super.key});
//   @override
//   Widget build(BuildContext context) {
//     var width = MediaQuery.of(context).size.width;
//     return Column(
//       children: [
//         Align(
//           alignment: Alignment.centerLeft,
//           child: Text(
//             'You can also like',
//             style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
//           ),
//         ),
//         SizedBox(height: width * .05),
//         const SimilarFeaturedBooksLVB(),
//       ],
//     );
//   }
// }
