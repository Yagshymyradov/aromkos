import 'package:flutter/material.dart';

import '../../../utils/extensions.dart';
import '../../../utils/theme.dart';

enum PersonalCategories {
  women,
  man,
  child;

  String get asValue {
    switch (this) {
      case PersonalCategories.women:
        return 'Ayal';
      case PersonalCategories.man:
        return 'Erkek';
      case PersonalCategories.child:
        return 'Caga';
    }
  }

  Color asColor(bool selected) {
    return selected ? AppColors.primary : AppColors.white;
  }
}

class SelectCategory extends StatelessWidget {
  final void Function(PersonalCategories) onPressed;
  final PersonalCategories selectedPersonal;

  const SelectCategory({
    super.key,
    required this.onPressed,
    required this.selectedPersonal,
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
          children: PersonalCategories.values
              .mapIndexed(
                (e, i) => Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: i == 0 ? 0 : 8),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          e.asColor(selectedPersonal == e),
                        ),
                      ),
                      onPressed: ()=> onPressed(e),
                      child: Text(
                        e.asValue,
                        style: textTheme.bodySmall?.copyWith(
                            color: e.asColor(selectedPersonal != e),
                            ),
                      ),
                    ),
                  ),
                ),
              )
              .toList(growable: false),
        ),
      ],
    );
  }
}
