import 'package:flutter/material.dart';

class ActionButtons extends StatelessWidget {
  final VoidCallback onHigher;
  final VoidCallback onLower;
  final VoidCallback onCorrect;

  const ActionButtons({
    super.key,
    required this.onHigher,
    required this.onLower,
    required this.onCorrect,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(onPressed: onLower, child: const Text('Menor')),
        const SizedBox(width: 16),
        FilledButton(onPressed: onCorrect, child: const Text('Correcto')),
        const SizedBox(width: 16),
        ElevatedButton(onPressed: onHigher, child: const Text('Mayor')),
      ],
    );
  }
}
