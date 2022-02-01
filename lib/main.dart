import 'package:cartoon_ui/core/theme/app_theme.dart';
import 'package:cartoon_ui/ui/introduction/introduction_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cartoon UI',
      theme: appThemeData,
      home: const IntroductionPage(),
    );
  }
}
