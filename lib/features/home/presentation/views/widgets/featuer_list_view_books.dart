import 'package:bookly_app2/features/home/presentation/manager/featuer_books/featuer_books_cubit.dart';
import 'package:bookly_app2/features/home/presentation/views/widgets/featuer_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeatuerListViewBooks extends StatelessWidget {
  const FeatuerListViewBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatuerBooksCubit, FeatuerBooksState>(
      builder: (context, state) {
        if (state is FeatuerBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 14),
                    child: FeatuerListViewItem(
                      imagUrl:
                          state.books[index].volumeInfo.imageLinks.thumbnail,
                    ),
                  );
                }),
          );
        } else if (state is FeatuerBooksFeiluer) {
          return Text(state.errorMessage);
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
