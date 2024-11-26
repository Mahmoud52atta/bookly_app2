import 'package:bookly_app2/core/constant/colors.dart';
import 'package:bookly_app2/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BooklyApp2());
}

class BooklyApp2 extends StatelessWidget {
  const BooklyApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor),
      home: SplashView(),
    );
  }
}
