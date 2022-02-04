import 'package:cartoon_ui/core/constants/border/const_border.dart';
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
        title: const Text("Please fill in the data"),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 6.0),
            child: TextButton.icon(
              onPressed: () {},
              label: const Icon(Icons.arrow_drop_down),
              icon: const CircleAvatar(
                backgroundColor: AppColors.blackTwo,
              ),
              style: TextButton.styleFrom(
                primary: AppColors.black,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              const Text(
                "Everything is mandatory here",
                style: AppTextStyle.moreData,
              ),
              const SizedBox(height: 12.0),
              ...List.generate(
                4,
                (index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 18.0),
                  child: Stack(
                    children: [
                      Transform.translate(
                        offset: const Offset(4.8, 4.8),
                        child: Transform.rotate(
                          angle: index % 2 == 0 ? -0.038 : 0.038,
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
                        angle: index % 2 == 0 ? -0.038 : 0.038,
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
                                  crossAxisAlignment: CrossAxisAlignment.center,
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
                                                activeColor: AppColors.black,
                                              ),
                                              const Text(
                                                "Male",
                                                style: AppTextStyle.moreData,
                                              ),
                                              Radio<String>(
                                                value: "female$index",
                                                groupValue: gender,
                                                onChanged: (event) {
                                                  setState(() {
                                                    gender = event!;
                                                  });
                                                },
                                                activeColor: AppColors.black,
                                              ),
                                              const Text(
                                                "Female",
                                                style: AppTextStyle.moreData,
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
            ],
          ),
        ),
      ),
    );
  }
}
