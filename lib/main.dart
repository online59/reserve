import 'package:flutter/material.dart';
import 'package:reserve/src/constants/colors.dart';
import 'package:reserve/src/features/store_feeds/presentations/screens/store_feeds_screen.dart';
import 'package:reserve/src/features/welcome/presentations/screens/welcome_screen.dart';
import 'package:reserve/src/utils/themes/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Reserve',
      theme: MyAppTheme.lightTheme,
      home: const WelcomeScreen(),
      // home: const StoreFeedScreen(),
    );
  }
}