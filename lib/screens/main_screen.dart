import 'home/home.dart';
import 'package:flutter/material.dart';

import '../utils/assets.dart';
import '../utils/theme.dart';
import 'favourite/favourite.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedPage = 0;

  void onBottomNavBarTap(int value) {
    selectedPage = value;
    setState(() {
      //no-op
    });
  }

  List<Widget> pages = [
    const Home(),
    const Favourite(),
    const Center(child: Text('Screen3')),
    const Center(child: Text('Screen4')),
    const Center(child: Text('Screen5')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 0,
        unselectedFontSize: 0,
        currentIndex: selectedPage,
        onTap: onBottomNavBarTap,
        items: [
          BottomNavigationBarItem(
            icon: AppIcons.home.svgPicture(),
            label: '',
            activeIcon: AppIcons.home.svgPicture(color: AppColors.primary),
          ),
          BottomNavigationBarItem(
            icon: AppIcons.heart.svgPicture(color: AppColors.darkGrey),
            label: '',
            activeIcon: AppIcons.heart.svgPicture(color: AppColors.primary),
          ),
          BottomNavigationBarItem(
            icon: AppIcons.bag.svgPicture(color: AppColors.darkGrey),
            label: '',
            activeIcon: AppIcons.bag.svgPicture(color: AppColors.primary),
          ),
          BottomNavigationBarItem(
            icon: AppIcons.search.svgPicture(),
            label: '',
            activeIcon: AppIcons.search.svgPicture(color: AppColors.primary),
          ),
          BottomNavigationBarItem(
            icon: AppIcons.profile.svgPicture(),
            label: '',
            activeIcon: AppIcons.profile.svgPicture(color: AppColors.primary),
          ),
        ],
      ),
    );
  }
}
