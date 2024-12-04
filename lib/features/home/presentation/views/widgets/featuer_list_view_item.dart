import 'package:bookly_app2/core/util/assets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class FeatuerListViewItem extends StatelessWidget {
  const FeatuerListViewItem({super.key, required this.imagUrl});
  final String imagUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
          aspectRatio: 2.6 / 4,
          child: CachedNetworkImage(
            imageUrl: imagUrl,
          )),
    );

    // SizedBox(
    //   height: MediaQuery.of(context).size.height * 0.3,
    //   child: AspectRatio(
    //     aspectRatio: 2.5 / 4,
    //     child: Container(
    //       decoration: BoxDecoration(
    //         borderRadius: BorderRadius.circular(16),
    //         image: const DecorationImage(image: AssetImage(Assets.testImage)),
    //         color: Colors.red,
    //       ),
    //     ),
    //   ),
    // );
  }
}
