import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../../../utils/assets.dart';
import '../../../utils/extensions.dart';
import '../../../utils/theme.dart';

class SlidableListTile extends StatelessWidget {
  final int index;

  const SlidableListTile({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;

    return Slidable(
      key: ValueKey(index),
      startActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.primary,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.add, color: AppColors.white),
                      style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.transparent),
                      ),
                    ),
                    Text('1', style: textTheme.bodySmall),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.remove, color: AppColors.white),
                      style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.transparent),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: SizedBox(
              width: 58,
              height: double.infinity,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: AppColors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: IconButton(
                    onPressed: () {},
                    icon: AppIcons.delete.svgPicture(),
                    style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.transparent),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.white,
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.light,
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4, vertical: 14),
                  child: Icon(Icons.ice_skating, size: 70),
                ),
              ),
            ),
            const SizedBox(width: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Nike Club Max', style: textTheme.titleSmall),
                const SizedBox(height: 6),
                Text(r'$584.95', style: textTheme.displaySmall),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
