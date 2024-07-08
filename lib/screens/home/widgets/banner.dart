import 'package:flutter/material.dart';

import '../../../utils/extensions.dart';
import '../../../utils/theme.dart';

class BannerBlock extends StatelessWidget {
  const BannerBlock({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    return Column(
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
            color: AppColors.dark,
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
      ],
    );
  }
}
