import 'package:bookly_app2/features/home/presentation/views/widgets/book_botton_action.dart';
import 'package:bookly_app2/features/home/presentation/views/widgets/book_ratio.dart';
import 'package:bookly_app2/features/home/presentation/views/widgets/similler_book_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsBody2 extends StatelessWidget {
  const BookDetailsBody2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'The Jungle Book',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            'Rudyard Kipling',
            style: TextStyle(fontSize: 10),
          ),
          SizedBox(
            height: 7,
          ),
          BookRatio(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          SizedBox(
            height: 25,
          ),
          BookBootonAction(),
          SizedBox(
            height: 25,
          ),
          Text(
            'You can also like',
            style: TextStyle(fontSize: 20),
          ),
          SimilarBookListView(),
        ],
      ),
    );
  }
}
