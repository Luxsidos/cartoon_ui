import 'package:cartoon_ui/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CurrentDotWidget extends StatelessWidget {
  final int _currentIndex, _index;
  const CurrentDotWidget(this._currentIndex, this._index, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeInOutQuint,
      height: _index == _currentIndex ? 28.0 : 12.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        color: _index == _currentIndex ? AppColors.black : AppColors.white,
        border: Border.all(color: AppColors.black, width: 2.5),
      ),
    );
  }
}
