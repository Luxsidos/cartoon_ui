import 'package:cartoon_ui/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class ZebraBorder extends StatelessWidget {
  const ZebraBorder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment(-0.4, -0.8),
          stops: [0.0, 0.5, 0.5, 1],
          colors: [
            AppColors.black,
            AppColors.black,
            AppColors.white,
          ],
          tileMode: TileMode.repeated,
        ),
      ),
    );
  }
}
