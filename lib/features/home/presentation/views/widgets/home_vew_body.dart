import 'package:bookly_app2/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app2/features/home/presentation/views/widgets/featuer_list_view_books.dart';
import 'package:bookly_app2/features/home/presentation/views/widgets/list_view_best_seller.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomAppBar(),
                  FeatuerListViewBooks(),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Best Seller',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            SliverFillRemaining(child: ListViewBestSeller())
          ],
        ));
  }
}
