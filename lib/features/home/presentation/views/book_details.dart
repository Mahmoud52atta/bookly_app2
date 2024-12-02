import 'package:bookly_app2/features/home/presentation/views/widgets/book_details_appar.dart';
import 'package:bookly_app2/features/home/presentation/views/widgets/book_details_body.dart';
import 'package:bookly_app2/features/home/presentation/views/widgets/book_item.dart';
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
              BookDetilsAppBar(),
              SizedBox(
                height: 33,
              ),
              BookItem(),
              SizedBox(
                height: 45,
              ),
              BookDetailsBody2(),
            ],
          ),
        ),
      ),
    );
  }
}
