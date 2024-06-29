import 'package:flutter/material.dart';

import '../../../components/product_card.dart';
import 'package:aromkos/utils/extensions.dart';

class Popular extends StatelessWidget {
  const Popular({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Popular Shoes', style: textTheme.titleSmall),
            TextButton(
              onPressed: () {},
              child: Text('See all', style: textTheme.labelSmall),
            ),
          ],
        ),
        const SizedBox(height: 16),
        const ProductCard(),
      ],
    );
  }
}
