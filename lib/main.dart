import 'package:argedor_task/src/features/first/presentation/page/first_screen.dart';
import 'package:argedor_task/src/shared/theme/custom_dark_theme.dart';
import 'package:argedor_task/src/shared/theme/custom_light_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CustomLightTheme().themeData,
      darkTheme: CustomDarkTheme().themeData,
      home: const FirstScreen(),
    );
  }
}
