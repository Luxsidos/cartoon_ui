import 'package:cartoon_ui/core/custom_widgets/size/app_size.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class DottedBorderWidget extends StatelessWidget {
  final Alignment alignment;

  const DottedBorderWidget(this.alignment, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: DottedBorder(
        dashPattern: const [4, 4],
        strokeWidth: 2.0,
        borderType: BorderType.RRect,
        radius: const Radius.circular(56.0),
        child: SizedBox(
          height: 260.0,
          width: AppSize.width(0.96, context),
        ),
      ),
    );
  }
}
