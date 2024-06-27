import 'package:flutter/material.dart';

import '../utils/assets.dart';

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
    const Center(child: Text('Screen1')),
    const Center(child: Text('Screen2')),
    const Center(child: Text('Screen3')),
    const Center(child: Text('Screen4')),
    const Center(child: Text('Screen5')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        currentIndex: selectedPage,
        onTap: onBottomNavBarTap,
        items: [
          BottomNavigationBarItem(
            icon: AppIcons.home.svgPicture(),
            label: '',
            activeIcon: AppIcons.home.svgPicture(color: const Color.fromRGBO(3, 110, 253, 1)),
          ),
          BottomNavigationBarItem(
            icon: AppIcons.heart.svgPicture(color: const Color.fromRGBO(112, 123, 129, 1)),
            label: '',
            activeIcon: AppIcons.heart.svgPicture(color: const Color.fromRGBO(3, 110, 253, 1)),
          ),
          BottomNavigationBarItem(
            icon: AppIcons.bag.svgPicture(color: const Color.fromRGBO(112, 123, 129, 1)),
            label: '',
            activeIcon: AppIcons.bag.svgPicture(color: const Color.fromRGBO(3, 110, 253, 1)),
          ),
          BottomNavigationBarItem(
            icon: AppIcons.search.svgPicture(),
            label: '',
            activeIcon: AppIcons.search.svgPicture(color: const Color.fromRGBO(3, 110, 253, 1)),
          ),
          BottomNavigationBarItem(
            icon: AppIcons.profile.svgPicture(),
            label: '',
            activeIcon: AppIcons.profile.svgPicture(color: const Color.fromRGBO(3, 110, 253, 1)),
          ),
        ],
      ),
    );
  }
}
