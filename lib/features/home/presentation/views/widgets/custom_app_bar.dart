import 'package:bookly_app2/core/util/assets.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 45),
      child: Row(
        children: [
          Image.asset(
            Assets.logo,
            height: 20,
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
              onPressed: () {},
              icon: Image.asset(
                Assets.icon,
                height: 32,
              ))
        ],
      ),
    );
  }
}
