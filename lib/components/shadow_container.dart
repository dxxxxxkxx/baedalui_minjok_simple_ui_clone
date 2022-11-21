import 'package:flutter/material.dart';

import 'constants.dart';

class ShadowContainer extends StatelessWidget {
  final EdgeInsetsGeometry? padding;
  final double circular;
  final Color boxShadowColor;
  final DecorationImage? decorationImage;
  final Widget child;

  const ShadowContainer({
    required this.child,
    this.padding,
    this.circular = circular15_0,
    this.boxShadowColor = shadowColor,
    this.decorationImage,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(circular),
        boxShadow: [BoxShadow(color: boxShadowColor, blurRadius: 4.0)],
        image: decorationImage,
      ),
      child: child,
    );
  }
}
