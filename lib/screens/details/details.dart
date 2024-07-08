import 'package:flutter/material.dart';

import '../../utils/assets.dart';
import '../../utils/extensions.dart';
import '../../utils/theme.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.chevron_left),
        ),
        title: Text('Sneaker Shop', style: textTheme.titleSmall),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shop),
          ),
          const SizedBox(width: 12),
        ],
      ),
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.all(20),
            children: [
              Text('Nike Air Max 270 Essential', style: textTheme.titleLarge),
              Text(
                'Men’s Shoes',
                style: textTheme.titleSmall?.copyWith(color: AppColors.darkerGrey),
              ),
              const SizedBox(height: 10),
              Text(r'$12656', style: textTheme.titleMedium),
              const SizedBox(height: 20),
              const Icon(Icons.ice_skating, size: 200),
              const SizedBox(height: 20),
              Text(
                'The Max Air 270 unit delivers unrivaled, all-day comfort. The sleek, running-inspired design roots you to everything Nike........',
                style: textTheme.bodyMedium,
              ),
            ],
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    flex: 2,
                    child: IconButton(
                      onPressed: () {},
                      icon: AppIcons.heart.svgPicture(),
                    ),
                  ),
                  Flexible(
                    flex: 3,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AppIcons.bag.svgPicture(),
                          const SizedBox(width: 10),
                          Text('Add to Cart', style: textTheme.bodySmall),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
