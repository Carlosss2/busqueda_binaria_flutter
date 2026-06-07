import 'package:flutter/material.dart';

class GameHeader extends StatelessWidget {
  final int min;
  final int max;
  final int attempts;

  const GameHeader({
    super.key,
    required this.min,
    required this.max,
    required this.attempts,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Piensa en un número del 1 al 100',
          style: Theme.of(context).textTheme.titleMedium,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 16),
        Text(
          'Rango: $min - $max',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(height: 4),
        Text(
          'Intento $attempts de 5',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}
