import 'package:bookly_app/features/home/presentation/views/widgets/h_list_view_item.dart';
import 'package:flutter/cupertino.dart';

class HListViewBuilder extends StatelessWidget {
  const HListViewBuilder({super.key});

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
            child: HListViewItem(),
          );
        },
      ),
    );
  }
}
