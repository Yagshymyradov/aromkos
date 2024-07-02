import 'package:flutter/material.dart';

import '../../components/checkout.dart';
import 'widgets/slidable_list_tile.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Cart')),
      body: CustomScrollView(
        slivers: [
          SliverList.separated(
            separatorBuilder: (context, index) => const SizedBox(height: 10),
            itemCount: 1,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SlidableListTile(index: index),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 20)),
          const SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Spacer(),
                Checkout(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
