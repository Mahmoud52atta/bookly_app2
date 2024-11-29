import 'package:bookly_app2/features/home/presentation/views/widgets/featuer_list_view_item.dart';
import 'package:flutter/material.dart';

class FeatuerListViewBooks extends StatelessWidget {
  const FeatuerListViewBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.only(right: 14),
              child: FeatuerListViewItem(),
            );
          }),
    );
  }
}
