import 'package:bookly_app2/core/util/app_router.dart';
import 'package:bookly_app2/core/util/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:go_router/go_router.dart';

class ListViewBestSellerItem extends StatelessWidget {
  const ListViewBestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetails);
      },
      child: Row(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .2,
            child: AspectRatio(
                aspectRatio: 3 / 4,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.green,
                      image: const DecorationImage(
                          image: AssetImage(Assets.bestImage))),
                )),
          ),
          const SizedBox(
            width: 10,
          ),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Harry Potter and the Goblet of Fire'),
                SizedBox(
                  height: 10,
                ),
                Text('J.K. Rowling'),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text('19.99 €'),
                    Spacer(),
                    Icon(
                      FontAwesomeIcons.solidStar,
                      color: Color(0xffFFDD4F),
                    ),
                    SizedBox(
                      width: 6.3,
                    ),
                    Text(
                      '48.6',
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '(243.5)',
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
