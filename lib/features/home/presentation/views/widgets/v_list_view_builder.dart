import 'package:bookly_app/features/home/presentation/views/widgets/v_list_view_item.dart';
import 'package:flutter/cupertino.dart';

class VListViewBuilder extends StatelessWidget {
  const VListViewBuilder({super.key});

  //You can use this In "HomeViewBody" inside a "SliverToFillRemaining()" widget
  //instead of VSliverListBuilder(), but
  ////it wont display all the items, so VSliverListBuilder() is
  ///the best option for now

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      clipBehavior: Clip.none,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 20,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: VListViewItem(),
        );
      },
    );
  }
}
