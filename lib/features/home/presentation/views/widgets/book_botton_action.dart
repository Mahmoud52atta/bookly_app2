import 'package:bookly_app2/features/home/presentation/views/widgets/custom_botton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookBootonAction extends StatelessWidget {
  const BookBootonAction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CustomBotton(
          textStyle: TextStyle(color: Colors.black),
          text: '19.85€',
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(18), bottomLeft: Radius.circular(18)),
        ),
        CustomBotton(
          textStyle: TextStyle(color: Colors.black),
          text: 'Free preview',
          color: Colors.orange,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(18), bottomRight: Radius.circular(18)),
        ),
      ],
    );
  }
}
