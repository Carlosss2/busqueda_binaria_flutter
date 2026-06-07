import 'package:flutter/material.dart';

class GuessDisplay extends StatelessWidget {
  final int guess;

  const GuessDisplay({super.key, required this.guess});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '¿Tu número es...?',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 16),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Text(
            '$guess',
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.onPrimaryContainer,
            ),
          ),
        ),
      ],
    );
  }
}
