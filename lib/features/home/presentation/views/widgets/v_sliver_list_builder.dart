import 'package:bookly_app/features/home/presentation/views/widgets/v_list_view_item.dart';
import 'package:flutter/material.dart';

class VSliverListBuilder extends StatelessWidget {
  const VSliverListBuilder({super.key, required this.childCount});
  final int childCount;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => const Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
          child: VListViewItem(),
        ),
        childCount: childCount,
      ),
    );
  }
}
