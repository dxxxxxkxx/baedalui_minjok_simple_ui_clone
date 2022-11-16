import 'package:flutter/material.dart';

import 'constants.dart';

class ShadowContainer extends StatelessWidget {
  final EdgeInsetsGeometry? padding;
  final BorderRadiusGeometry? borderRadiusGeometry;
  final DecorationImage? decorationImage;
  final Widget child;

  const ShadowContainer({
    required this.child,
    this.padding,
    this.borderRadiusGeometry =
        const BorderRadius.all(Radius.circular(circular20_0)),
    this.decorationImage,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: borderRadiusGeometry,
        boxShadow: const [BoxShadow(color: shadowColor, blurRadius: 2.0)],
        image: decorationImage,
      ),
      child: child,
    );
  }
}
