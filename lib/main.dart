import 'package:aromkos/screens/main_screen.dart';
import 'package:aromkos/utils/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AramKos());
}

class AramKos extends StatelessWidget {
  const AramKos({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const MainScreen(),
    );
  }
}
