import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/cupertino.dart';

class SimilarFeaturedBooksLVB extends StatelessWidget {
  const SimilarFeaturedBooksLVB({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        // itemCount: 11,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.0),
            child: CustomBookImage(
              imgURL:
                  'https://th.bing.com/th/id/OIF.YVwDt9Wk5eQtHbD2qmu8sw?rs=1&pid=ImgDetMain',
            ),
          );
        },
      ),
    );
  }
}
