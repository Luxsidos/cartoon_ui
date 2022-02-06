import 'dart:ui';

import 'package:cartoon_ui/core/constants/border/const_border.dart';
import 'package:cartoon_ui/core/custom_widgets/size/app_size.dart';
import 'package:cartoon_ui/core/theme/app_colors.dart';
import 'package:cartoon_ui/core/theme/app_text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LangDrawer extends StatefulWidget {
  const LangDrawer({Key? key}) : super(key: key);

  @override
  State<LangDrawer> createState() => _LangDrawerState();
}

class _LangDrawerState extends State<LangDrawer> {
  int currentLang = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: AppSize.height(0.068, context)),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaY: 6.0, sigmaX: 6.0),
        child: Container(
          width: double.maxFinite,
          margin: const EdgeInsets.only(right: 42.0),
          decoration: BoxDecoration(
            color: AppColors.white,
            border: Border.all(color: AppColors.black, width: 2.5),
            borderRadius: const BorderRadius.horizontal(
              right: Radius.circular(42.0),
            ),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Transform.translate(
                offset: const Offset(0.0, -24.0),
                child: IconButton(
                  padding: const EdgeInsets.all(0.0),
                  onPressed: () => Navigator.pop(context),
                  icon: const CircleAvatar(
                    backgroundColor: AppColors.black,
                    child: Icon(
                      CupertinoIcons.xmark,
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),
              const Text("Change Language", style: AppTextStyle.data),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: AppSize.height(0.024, context),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search",
                          prefixIcon: const Icon(
                            CupertinoIcons.search,
                            color: AppColors.black,
                          ),
                          suffixIcon: const Icon(
                            CupertinoIcons.mic,
                            color: AppColors.black,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16.0),
                            borderSide: const BorderSide(width: 2.5),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16.0),
                            borderSide: const BorderSide(width: 2.5),
                          ),
                        ),
                      ),
                      flex: 18,
                    ),
                    const Spacer(flex: 1),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: constBorder,
                        color: AppColors.tealAccent,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100.0),
                        child: Material(
                          color: AppColors.tealAccent,
                          child: IconButton(
                            splashColor: AppColors.black,
                            padding: const EdgeInsets.all(0.0),
                            icon: const Icon(
                              CupertinoIcons.settings,
                              size: 26.0,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ...List.generate(
                5,
                (index) => Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.grey, width: 2.2),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  margin: EdgeInsets.only(
                    bottom: AppSize.height(0.016, context),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: Material(
                      color: currentLang == index
                          ? AppColors.yellowAccent.withOpacity(0.7)
                          : AppColors.white.withOpacity(0.7),
                      child: ListTile(
                        onTap: () {
                          setState(() {
                            currentLang = index;
                          });
                        },
                        leading:
                            const CircleAvatar(backgroundColor: AppColors.grey),
                        title: const Text(
                          "English",
                          style: AppTextStyle.flags,
                        ),
                        trailing: currentLang == index
                            ? const CircleAvatar(
                                radius: 8.0,
                                backgroundColor: Colors.lightGreen,
                                child: Icon(
                                  Icons.check_rounded,
                                  color: AppColors.white,
                                  size: 10.0,
                                ),
                              )
                            : null,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: AppSize.height(0.01, context)),
              Stack(
                children: [
                  Transform.translate(
                    offset: const Offset(0.4, 5.0),
                    child: OutlinedButton(
                      onPressed: null,
                      child: const Text(
                        "Apply",
                        style: AppTextStyle.data,
                      ),
                      style: OutlinedButton.styleFrom(
                        fixedSize: const Size.fromWidth(double.maxFinite),
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(56.0),
                        ),
                        backgroundColor: AppColors.white,
                        primary: AppColors.black,
                        side: const BorderSide(
                          color: AppColors.black,
                          width: 2.5,
                        ),
                      ),
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text(
                      "Apply",
                      style: AppTextStyle.data,
                    ),
                    style: OutlinedButton.styleFrom(
                      fixedSize: const Size.fromWidth(double.maxFinite),
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(56.0),
                      ),
                      backgroundColor: AppColors.tealAccent,
                      primary: AppColors.black,
                      side: const BorderSide(
                        color: AppColors.black,
                        width: 2.5,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
