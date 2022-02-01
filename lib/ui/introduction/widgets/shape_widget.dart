import 'package:flutter/material.dart';

class ShapeWidget extends StatelessWidget {
  final String numberOfImage;
  final Color backgroundColor;
  final double? left, top, bottom, right;

  const ShapeWidget(this.numberOfImage, this.backgroundColor,
      {this.left, this.top, this.bottom, this.right, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 1300),
      curve: Curves.easeOutQuint,
      top: top,
      bottom: bottom,
      right: right,
      left: left,
      child: ImageIcon(
        AssetImage("assets/images/shape_$numberOfImage.png"),
        size: 360.0,
        color: backgroundColor,
      ),
    );
  }
}
