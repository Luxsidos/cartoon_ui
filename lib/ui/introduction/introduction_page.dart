import 'package:cartoon_ui/core/custom_widgets/size/app_size.dart';
import 'package:cartoon_ui/core/theme/app_colors.dart';
import 'package:cartoon_ui/ui/introduction/widgets/current_dot_widget.dart';
import 'package:cartoon_ui/ui/introduction/widgets/dotted_border_widget.dart';
import 'package:cartoon_ui/ui/introduction/widgets/introduction_widget.dart';
import 'package:cartoon_ui/ui/introduction/widgets/lets_do_it_button.dart';
import 'package:cartoon_ui/ui/introduction/widgets/shape_widget.dart';
import 'package:cartoon_ui/ui/main/home/home_page.dart';
import 'package:flutter/material.dart';

class IntroductionPage extends StatefulWidget {
  const IntroductionPage({Key? key}) : super(key: key);

  @override
  State<IntroductionPage> createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {
  final GlobalKey _key = GlobalKey();

  int _currentIndex = 0;

  double _bottom = 0.0;
  double _left = -1000.0;

  bool isOpen = false;

  @override
  void initState() {
    _getOffset(_key);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  const DottedBorderWidget(Alignment(-14.4, -0.26)),
                  const DottedBorderWidget(Alignment(-11.2, -0.1)),
                  Center(
                    child: Row(
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: const BorderRadius.horizontal(
                              right: Radius.circular(56.0),
                            ),
                            child: SizedBox(
                              height: 260.0,
                              child: PageView.builder(
                                key: _key,
                                controller: PageController(
                                  viewportFraction: 1.18,
                                  initialPage: _currentIndex,
                                ),
                                scrollDirection: Axis.vertical,
                                physics: const BouncingScrollPhysics(),
                                itemCount: 3,
                                onPageChanged: (event) {
                                  _currentIndex = event;
                                  setState(() {});
                                },
                                itemBuilder: (context, index) {
                                  return const IntoductionWidget();
                                },
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: AppSize.width(0.058, context),
                          ),
                          height: 76.0,
                          width: 12.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: List.generate(
                              3,
                              (index) => CurrentDotWidget(_currentIndex, index),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  AnimatedPositioned(
                    duration: const Duration(milliseconds: 600),
                    curve: Curves.easeOutCirc,
                    bottom: _bottom - 52.0,
                    left: _left,
                    child: LetsDoItButton(() async {
                      setState(() => isOpen = false);

                      await Future.delayed(const Duration(milliseconds: 350));

                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Stack(
                fit: StackFit.expand,
                children: [
                  ShapeWidget(
                    "three",
                    AppColors.yellowAccent,
                    left: isOpen ? -40.0 : -240.0,
                    top: isOpen ? -20.0 : 230.0,
                  ),
                  ShapeWidget(
                    "two",
                    AppColors.tealAccent,
                    right: isOpen ? -80.0 : -280.0,
                    bottom: isOpen ? -20.0 : -250.0,
                  ),
                  ShapeWidget(
                    "one",
                    AppColors.black,
                    left: isOpen ? -100.0 : -300.0,
                    bottom: isOpen ? -100.0 : -300.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future _getOffset(GlobalKey key) async {
    Future.delayed(const Duration(milliseconds: 1), () {
      RenderBox box = key.currentContext!.findRenderObject() as RenderBox;
      Offset position = box.localToGlobal(Offset.zero);

      _bottom = position.dy;
      _left = 0.0;
    }).then(
      (value) => setState(() {
        isOpen = true;
      }),
    );
  }
}
