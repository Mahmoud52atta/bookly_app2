import 'package:bookly_app2/features/home/presentation/views/widgets/book_item.dart';
import 'package:flutter/material.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
          // physics: const NeverScrollableScrollPhysics(),
          // padding: EdgeInsets.zero,
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.only(top: 15, bottom: 15),
              child: Padding(
                padding: EdgeInsets.only(right: 10),
                child: BookItem(),
              ),
            );
          }),
    );
  }
}
