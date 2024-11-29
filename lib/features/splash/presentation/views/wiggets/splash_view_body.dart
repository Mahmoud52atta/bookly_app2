import 'package:bookly_app2/core/util/app_router.dart';
import 'package:bookly_app2/core/util/assets.dart';
import 'package:bookly_app2/features/splash/presentation/views/wiggets/sliding_animated_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationContainer;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();

    initSlidingAnimation();

    navigatToHomeView();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(Assets.logo),
        SlidingAnimatedText(slidingAnimation: slidingAnimation)
      ],
    );
  }

  void initSlidingAnimation() {
    animationContainer = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    slidingAnimation =
        Tween(begin: const Offset(0, 10), end: const Offset(0, 0))
            .animate(animationContainer);
    animationContainer.forward();
  }

  void navigatToHomeView() {
    Future.delayed(Duration(seconds: 3), () {
      // Transform.scale();
      GoRouter.of(context).push(AppRouter.kHomeView);
    });
  }
}
