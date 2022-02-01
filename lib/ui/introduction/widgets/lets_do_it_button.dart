import 'package:cartoon_ui/core/theme/app_colors.dart';
import 'package:cartoon_ui/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class LetsDoItButton extends StatelessWidget {
  const LetsDoItButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      child: Row(
        children: const [
          Text(
            "Lets Do it Now",
            style: AppTextStyle.data,
          ),
          SizedBox(width: 16.0),
          CircleAvatar(
            child: Icon(
              Icons.arrow_forward_rounded,
              color: AppColors.white,
            ),
            backgroundColor: AppColors.black,
          ),
        ],
      ),
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 12.0,
        ),
        backgroundColor: AppColors.tealAccent,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(
            right: Radius.circular(56.0),
          ),
        ),
        primary: AppColors.black,
        side: const BorderSide(
          color: AppColors.black,
          width: 2.5,
        ),
      ),
    );
  }
}
