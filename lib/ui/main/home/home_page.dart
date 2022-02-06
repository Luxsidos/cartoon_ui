import 'package:cartoon_ui/core/constants/border/const_border.dart';
import 'package:cartoon_ui/core/custom_widgets/drawer/lang_drawer.dart';
import 'package:cartoon_ui/core/theme/app_colors.dart';
import 'package:cartoon_ui/core/theme/app_text_style.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? gender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Please fill in the data"),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 6.0),
            child: Builder(builder: (context) {
              return TextButton.icon(
                onPressed: () => Scaffold.of(context).openDrawer(),
                label: const Icon(Icons.arrow_drop_down),
                icon: const CircleAvatar(
                  backgroundColor: AppColors.blackTwo,
                ),
                style: TextButton.styleFrom(
                  primary: AppColors.black,
                ),
              );
            }),
          ),
        ],
      ),
      drawer: const LangDrawer(),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          physics: const BouncingScrollPhysics(),
          children: [
            const Text(
              "Everything is mandatory here",
              style: AppTextStyle.moreData,
            ),
            const SizedBox(height: 12.0),
            Stack(
              children: [
                Column(
                  children: List.generate(
                    4,
                    (index) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 18.0),
                      child: Stack(
                        children: [
                          Transform.translate(
                            offset: const Offset(4.8, 4.8),
                            child: Transform.rotate(
                              angle: index % 3 == 0 ? -0.038 : 0.038,
                              child: DottedBorder(
                                dashPattern: const [4, 4],
                                strokeWidth: 2.0,
                                borderType: BorderType.RRect,
                                padding: const EdgeInsets.all(0.0),
                                radius: const Radius.circular(24.0),
                                child: SizedBox(
                                  height: 106.0,
                                  child: Container(),
                                ),
                              ),
                            ),
                          ),
                          Transform.rotate(
                            angle: index % 3 == 0 ? -0.038 : 0.038,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(24.0),
                              child: Material(
                                borderRadius: BorderRadius.circular(24.0),
                                child: InkWell(
                                  splashColor: AppColors.black,
                                  onTap: () {},
                                  child: Ink(
                                    height: 106.0,
                                    padding: const EdgeInsets.all(16.0),
                                    decoration: BoxDecoration(
                                      color: AppColors.white,
                                      borderRadius: BorderRadius.circular(24.0),
                                      border: constBorder,
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          "assets/images/gender.png",
                                          height: 80.0,
                                          color: index % 2 == 0
                                              ? AppColors.tealAccent
                                              : AppColors.yellowAccent,
                                        ),
                                        Expanded(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 14.0),
                                                child: Text(
                                                  "Your gender",
                                                  style: AppTextStyle.data,
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  Radio<String>(
                                                    value: "male$index",
                                                    groupValue: gender,
                                                    onChanged: (event) {
                                                      setState(() {
                                                        gender = event!;
                                                      });
                                                    },
                                                    activeColor:
                                                        AppColors.black,
                                                  ),
                                                  const Text(
                                                    "Male",
                                                    style:
                                                        AppTextStyle.moreData,
                                                  ),
                                                  Radio<String>(
                                                    value: "female$index",
                                                    groupValue: gender,
                                                    onChanged: (event) {
                                                      setState(() {
                                                        gender = event!;
                                                      });
                                                    },
                                                    activeColor:
                                                        AppColors.black,
                                                  ),
                                                  const Text(
                                                    "Female",
                                                    style:
                                                        AppTextStyle.moreData,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                _ropeWidget(66.0, 0.0, top: 107.0, left: 84.0),
                _ropeWidget(78.0, 0.1, top: 102.0, right: 67.0),
                _ropeWidget(70.0, -0.1, top: 244.0, left: 38.0),
                _ropeWidget(66.0, 0.0, top: 256.0, right: 30.0),
                _ropeWidget(76.0, 0.0, bottom: 104.0, left: 82.0),
                _ropeWidget(66.0, 0.0, bottom: 110.0, right: 42.0),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        Transform.translate(
                          offset: const Offset(3.0, 5.0),
                          child: OutlinedButton(
                            onPressed: null,
                            child: const Text(
                              "Submit",
                              style: AppTextStyle.data,
                            ),
                            style: OutlinedButton.styleFrom(
                              fixedSize: const Size.fromWidth(double.maxFinite),
                              padding:
                                  const EdgeInsets.symmetric(vertical: 16.0),
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
                          onPressed: () {},
                          child: const Text(
                            "Submit",
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
                  ),
                  const SizedBox(width: 16.0),
                  Expanded(
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Skip Now",
                        style: AppTextStyle.data,
                      ),
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(56.0),
                        ),
                        primary: AppColors.black,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _ropeWidget(
    double height,
    double rotate, {
    double? top,
    double? bottom,
    double? left,
    double? right,
  }) {
    return Positioned(
      top: top,
      bottom: bottom,
      left: left,
      right: right,
      child: Transform.rotate(
        angle: rotate,
        child: SizedBox(
          height: height,
          child: Stack(
            alignment: Alignment.center,
            children: [
              const Align(
                alignment: Alignment.topCenter,
                child: CircleAvatar(
                  backgroundColor: AppColors.black,
                  radius: 6.0,
                ),
              ),
              const Align(
                alignment: Alignment.bottomCenter,
                child: CircleAvatar(
                  backgroundColor: AppColors.black,
                  radius: 6.0,
                ),
              ),
              Center(
                child: Container(
                  width: 3.5,
                  height: height - 12.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(34.0),
                    color: AppColors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: AppColors.black,
                        blurRadius: 0.2,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
