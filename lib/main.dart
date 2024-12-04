import 'package:bookly_app2/core/constant/colors.dart';
import 'package:bookly_app2/core/util/app_router.dart';
import 'package:bookly_app2/core/util/service_locator.dart';
import 'package:bookly_app2/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app2/features/home/presentation/manager/featuer_books/featuer_books_cubit.dart';
import 'package:bookly_app2/features/home/presentation/manager/newest_books/newst_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setup();
  runApp(const BooklyApp2());
}

class BooklyApp2 extends StatelessWidget {
  const BooklyApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeatuerBooksCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchFeatuerBooks(),
        ),
        BlocProvider(
          create: (context) => NewstBooksCubit(
            getIt.get<HomeRepoImpl>(),
          ),
        )
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme:
            ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor),
        routerConfig: AppRouter.router,
      ),
    );
  }
}
