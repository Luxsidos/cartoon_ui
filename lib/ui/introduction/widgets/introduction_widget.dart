import 'package:cartoon_ui/core/constants/border/const_border.dart';
import 'package:cartoon_ui/core/custom_widgets/size/app_size.dart';
import 'package:cartoon_ui/core/theme/app_colors.dart';
import 'package:cartoon_ui/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class IntoductionWidget extends StatelessWidget {
  const IntoductionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260.0,
      width: AppSize.width(0.85, context),
      margin: const EdgeInsets.symmetric(
        vertical: 24.0,
      ),
      padding: const EdgeInsets.all(24.0),
      decoration: BoxDecoration(
        color: AppColors.white,
        border: constBorder,
        borderRadius: const BorderRadius.horizontal(
          right: Radius.circular(56.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            "Hello i'm Your hydration Friend",
            style: AppTextStyle.main,
          ),
          Spacer(),
          Text(
            "In order to provide customized hydration advice, I need to get some basic data",
            style: AppTextStyle.moreData,
          ),
          Spacer(),
        ],
      ),
    );
  }
}
