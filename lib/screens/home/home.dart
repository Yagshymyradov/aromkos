import 'package:flutter/material.dart';

import '../../utils/extensions.dart';
import 'widgets/banner.dart';
import 'widgets/brands.dart';
import 'widgets/popular.dart';
import 'widgets/select_category.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PersonalCategories personalCategories = PersonalCategories.women;

  void updateUi() {
    setState(() {
      //no-op
    });
  }

  void onSelectedCategory(PersonalCategories category){
    personalCategories = category;
    updateUi();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text('Explore', style: textTheme.titleLarge),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          SelectCategory(
            onPressed: onSelectedCategory,
            selectedPersonal: personalCategories,
          ),
          const SizedBox(height: 20),
          const BannerBlock(),
          const SizedBox(height: 10),
          const Brands(),
          const SizedBox(height: 10),
          const Popular(),
        ],
      ),
    );
  }
}
