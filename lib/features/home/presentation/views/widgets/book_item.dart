import 'package:bookly_app2/core/util/assets.dart';
import 'package:flutter/material.dart';

class BookItem extends StatelessWidget {
  const BookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.3,
        child: AspectRatio(
          aspectRatio: 2.9 / 4,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: const DecorationImage(image: AssetImage(Assets.bestImage)),
              color: Colors.green,
            ),
          ),
        ),
      ),
    );
  }
}
