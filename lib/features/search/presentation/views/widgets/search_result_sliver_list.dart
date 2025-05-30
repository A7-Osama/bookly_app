import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/models/book_model/image_links.dart';
import 'package:bookly_app/features/home/data/models/book_model/volume_info.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_sliver_list_item.dart';
import 'package:flutter/material.dart';

class SearchResultSliverList extends StatelessWidget {
  const SearchResultSliverList({super.key, required this.childCount});
  final int childCount;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => const Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: BookSliverListItem(
            bookModel: BookModel(
              volumeInfo: VolumeInfo(
                imageLinks: ImageLinks(
                  smallThumbnail:
                      'https://th.bing.com/th/id/OIF.YVwDt9Wk5eQtHbD2qmu8sw?rs=1&pid=ImgDetMain',
                  thumbnail:
                      'https://th.bing.com/th/id/OIF.YVwDt9Wk5eQtHbD2qmu8sw?rs=1&pid=ImgDetMain',
                ),
              ),
            ),
            // imgURL:
            //     'https://th.bing.com/th/id/OIF.YVwDt9Wk5eQtHbD2qmu8sw?rs=1&pid=ImgDetMain',
          ),
        ),
        childCount: childCount,
      ),
    );
  }
}
