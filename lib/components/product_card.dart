import 'package:flutter/material.dart';

import '../screens/details/details.dart';
import '../utils/assets.dart';
import '../utils/extensions.dart';
import '../utils/navigation.dart';
import '../utils/theme.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;

    return Material(
      color: AppColors.dark,
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () => navigateToScreen(context, const Details()),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 15),
                  const Icon(Icons.ice_skating, size: 150),
                  const SizedBox(height: 12),
                  Text('BEST SELLER', style: textTheme.labelSmall),
                  Text(
                    'Nike Jordan',
                    style: textTheme.titleSmall?.copyWith(color: AppColors.darkGrey),
                  ),
                  Text(r'$302.00', style: textTheme.displaySmall),
                ],
              ),
            ),
            IconButton(
              style: const ButtonStyle(
                maximumSize: WidgetStatePropertyAll(Size(30, 30)),
                minimumSize: WidgetStatePropertyAll(Size(28, 28)),
              ),
              onPressed: () {},
              icon: AppIcons.heart.svgPicture(color: AppColors.white),
            ),
            const Positioned(
              bottom: 0,
              right: 0,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Icon(Icons.add, color: AppColors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
