import 'package:bookly_app2/features/home/presentation/views/widgets/book_botton_action.dart';
import 'package:bookly_app2/features/home/presentation/views/widgets/book_details_body.dart';
import 'package:bookly_app2/features/home/presentation/views/widgets/book_item.dart';
import 'package:bookly_app2/features/home/presentation/views/widgets/book_ratio.dart';
import 'package:bookly_app2/features/home/presentation/views/widgets/custom_botton.dart';
import 'package:bookly_app2/features/home/presentation/views/widgets/list_view_best_seller_item.dart';
import 'package:flutter/material.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Expanded(
          child: Column(
            children: [
              SizedBox(
                height: 44,
              ),
              BookDetilsBody(),
              SizedBox(
                height: 33,
              ),
              BookItem(),
              SizedBox(
                height: 45,
              ),
              BookDetailsBody(),
            ],
          ),
        ),
      ),
    );
  }
}

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

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
