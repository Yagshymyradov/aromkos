import 'package:flutter/material.dart';

import '../../../components/checkout_button.dart';
import '../../../components/field_text.dart';
import '../../../utils/theme.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.chevron_left),
        ),
        title: const Text('My Cart'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: AppColors.dark,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Name', style: textTheme.titleSmall),
                    const SizedBox(height: 10),
                    const FieldText(
                      hintText: 'Write your name',
                    ),
                    const SizedBox(height: 20),
                    Text('Phone Number', style: textTheme.titleSmall),
                    const SizedBox(height: 10),
                    const FieldText(
                      hintText: 'Write phone number',
                    ),
                    const SizedBox(height: 20),
                    Text('Address', style: textTheme.titleSmall),
                    const SizedBox(height: 10),
                    const FieldText(
                      hintText: 'Write address',
                    ),
                    const SizedBox(height: 20),
                    Text('Promo code', style: textTheme.titleSmall),
                    const SizedBox(height: 10),
                    const FieldText(
                      hintText: 'Write promo code',
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Spacer(),
          const CheckoutButton(),
        ],
      ),
    );
  }
}
