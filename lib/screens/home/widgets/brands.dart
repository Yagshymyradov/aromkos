import '../../../utils/extensions.dart';
import 'package:flutter/material.dart';

import '../../../utils/theme.dart';

class Brands extends StatelessWidget {
  const Brands({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Brendlar', style: textTheme.titleSmall),
            TextButton(
              onPressed: () {},
              child: Text('See all', style: textTheme.labelSmall),
            ),
          ],
        ),
        Row(
          children: List.generate(
            3,
            (index) => Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: index == 0 ? 0 : 8),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: AppColors.dark,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 31),
                    child: Center(child: Text('BOSS', style: textTheme.displayMedium)),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
