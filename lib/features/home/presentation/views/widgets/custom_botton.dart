import 'package:flutter/material.dart';

class CustomBotton extends StatelessWidget {
  const CustomBotton({
    super.key,
    required this.text,
    this.borderRadius,
    required this.color,
    required this.textStyle,
  });
  final String text;
  final Color color;
  final BorderRadius? borderRadius;
  final TextStyle textStyle;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 53,
        child: TextButton(
            style: TextButton.styleFrom(
                backgroundColor: color,
                shape: ContinuousRectangleBorder(
                    borderRadius: borderRadius ?? BorderRadius.circular(16))),
            onPressed: () {},
            child: Text(
              text,
              style: textStyle,
            )),
      ),
    );
  }
}
