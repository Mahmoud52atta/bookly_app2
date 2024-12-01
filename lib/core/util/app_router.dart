import 'package:bookly_app2/features/home/presentation/views/book_details.dart';
import 'package:bookly_app2/features/home/presentation/views/home_view.dart';
import 'package:bookly_app2/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetails = '/kBookDetails';

  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kHomeView,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: kBookDetails,
      builder: (context, state) => const BookDetails(),
    )
  ]);
}
