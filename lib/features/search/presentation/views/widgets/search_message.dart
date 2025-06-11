import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/widgets/custom_failure_widget.dart';
import 'package:flutter/material.dart';

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
