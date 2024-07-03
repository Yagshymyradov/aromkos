import 'package:flutter/material.dart';

import '../screens/cart/checkout/checkout_screen.dart';
import '../utils/extensions.dart';
import '../utils/navigation.dart';
import '../utils/theme.dart';

class CheckoutButton extends StatelessWidget {
  const CheckoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;

    return ColoredBox(
      color: AppColors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 32),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('SubTotal', style: textTheme.headlineSmall),
                Text(r'$753.95', style: textTheme.titleSmall),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Delivery', style: textTheme.headlineSmall),
                Text(r'$60.20', style: textTheme.titleSmall),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: List.generate(
                150 ~/ 2,
                (index) => Expanded(
                  child: SizedBox(
                    height: 2,
                    child: ColoredBox(
                      color: index.isOdd ? Colors.transparent : Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total Cost', style: textTheme.titleSmall),
                Text(
                  r'$814.15',
                  style: textTheme.labelSmall?.copyWith(fontSize: 16),
                ),
              ],
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () => navigateToScreen(context, const CheckoutScreen()),
              style: const ButtonStyle(
                minimumSize: WidgetStatePropertyAll(Size(double.infinity, 50)),
              ),
              child: Text('Checkout', style: textTheme.bodySmall),
            ),
          ],
        ),
      ),
    );
  }
}
