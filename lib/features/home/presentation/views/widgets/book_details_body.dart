import 'package:flutter/material.dart';

class BookDetilsBody extends StatelessWidget {
  const BookDetilsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // const SizedBox(
        //   height: 70,
        // ),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.close,
              size: 40,
            )),
        const Spacer(),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart_outlined,
              size: 30,
            ))
      ],
    );
  }
}
