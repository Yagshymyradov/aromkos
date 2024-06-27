import 'package:aromkos/screens/home/widgets/new.dart';
import 'package:aromkos/screens/home/widgets/select_category.dart';
import 'package:aromkos/utils/extensions.dart';
import 'package:flutter/material.dart';

import 'widgets/brands.dart';
import 'widgets/popular.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool selectedWomenCategory = true;

  void updateUi() {
    setState(() {
      //no-op
    });
  }

  void onWomenTap() {
    selectedWomenCategory = true;
    updateUi();
  }

  void onMenTap() {
    selectedWomenCategory = false;
    updateUi();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text('Explore', style: textTheme.titleLarge),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shop),
          ),
          const SizedBox(width: 12),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          SelectCategory(
            selectedWomen: selectedWomenCategory,
            onWomenTap: onWomenTap,
            onMenTap: onMenTap,
          ),
          const SizedBox(height: 10),
          const Brands(),
          const Popular(),
          const New()
        ],
      ),
    );
  }
}
