import 'package:aromkos/utils/extensions.dart';
import 'package:aromkos/utils/theme.dart';
import 'package:flutter/material.dart';

class SelectCategory extends StatelessWidget {
  final bool selectedWomen;
  final VoidCallback onWomenTap;
  final VoidCallback onMenTap;

  const SelectCategory({
    super.key,
    required this.selectedWomen,
    required this.onWomenTap,
    required this.onMenTap,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Select Category', style: textTheme.titleSmall),
        const SizedBox(height: 14),
        Row(
          children: [
            Expanded(
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                    selectedWomen ? AppColors.primary : AppColors.white,
                  ),
                ),
                onPressed: onWomenTap,
                child: Text(
                  'Ayal',
                  style: textTheme.bodySmall?.copyWith(
                    color: selectedWomen ? AppColors.white : AppColors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: ElevatedButton(
                onPressed: onMenTap,
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                    selectedWomen ? AppColors.white : AppColors.primary,
                  ),
                ),
                child: Text(
                  'Erkek',
                  style: textTheme.bodySmall?.copyWith(
                    color: selectedWomen ? AppColors.black : AppColors.white,
                  ),
                ),
              ),
            ),
            const Expanded(child: SizedBox()),
          ],
        ),
      ],
    );
  }
}
