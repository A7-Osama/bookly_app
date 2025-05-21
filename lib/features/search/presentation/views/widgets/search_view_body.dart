import 'package:flutter/material.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: const SearchTextField(),
        ),
        //
      ],
    );
  }
}
