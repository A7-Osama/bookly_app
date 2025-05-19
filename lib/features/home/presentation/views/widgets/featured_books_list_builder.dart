import 'package:bookly_app/features/home/presentation/views/widgets/featured_books_tem.dart';
import 'package:flutter/cupertino.dart';

class FeaturedBooksListBuilder extends StatelessWidget {
  const FeaturedBooksListBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        // itemCount: 11,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: FeaturedBooksItem(),
          );
        },
      ),
    );
  }
}
