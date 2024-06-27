import 'package:aromkos/utils/extensions.dart';
import 'package:flutter/material.dart';

import '../../../utils/theme.dart';

class New extends StatelessWidget {
  const New({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('New', style: textTheme.titleSmall),
            TextButton(
              onPressed: () {},
              child: Text('See all', style: textTheme.labelSmall),
            ),
          ],
        ),
        const SizedBox(height: 16),
        DecoratedBox(
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Summer Sale', style: textTheme.titleSmall),
                    Text('15% OFF', style: textTheme.displayMedium),
                  ],
                ),
                const Icon(Icons.roller_skating_outlined, size: 130)
              ],
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
