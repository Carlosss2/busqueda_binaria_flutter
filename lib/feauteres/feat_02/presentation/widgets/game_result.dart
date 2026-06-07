import 'package:flutter/material.dart';

class GameResult extends StatelessWidget {
  final bool won;
  final int number;
  final int attempts;
  final String? message;
  final VoidCallback onPlayAgain;

  const GameResult({
    super.key,
    required this.won,
    required this.number,
    required this.attempts,
    this.message,
    required this.onPlayAgain,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    String title;
    String subtitle;

    if (message != null) {
      title = message!;
      subtitle = '';
    } else if (won) {
      title = '¡Adiviné tu número!';
      subtitle = 'Tu número es el $number, lo adiviné en $attempts intentos';
    } else {
      title = 'Se acabaron los intentos';
      subtitle = 'No logré adivinar tu número, llegué hasta el $number';
    }

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(title, style: theme.textTheme.headlineSmall, textAlign: TextAlign.center),
            if (subtitle.isNotEmpty) ...[
              const SizedBox(height: 8),
              Text(subtitle, style: theme.textTheme.titleMedium, textAlign: TextAlign.center),
            ],
            const SizedBox(height: 24),
            FilledButton(onPressed: onPlayAgain, child: const Text('Jugar de nuevo')),
          ],
        ),
      ),
    );
  }
}
